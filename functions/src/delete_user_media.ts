import {onCall, CallableRequest, HttpsError} from
  "firebase-functions/v2/https";
import * as admin from "firebase-admin";
import {USERS_MEDIA_COLLECTION} from "./constants";

/**
 * Deletes a user's document and its subcollections.
 * Request data must include { uid: string }.
 *
 * @param {CallableRequest<unknown>} request - The callable request.
 * @returns {Promise<{ message: string }>} Success message.
 */
export const deleteUserMedia = onCall(
  async (
    request: CallableRequest<unknown>
  ): Promise<{ message: string }> => {
    _validateRequest(request);
    const {uid} = request.data as { uid: string };

    const docRef = admin
      .firestore()
      .collection(USERS_MEDIA_COLLECTION)
      .doc(uid);

    await _deleteDocumentRecursively(docRef);

    return {
      message:
        "Document and its subcollections have been successfully deleted.",
    };
  }
);

/**
 * Validates the request parameters and authentication.
 *
 * @param {CallableRequest<unknown>} request - The callable request.
 * @return {void}
 */
function _validateRequest(
  request: CallableRequest<unknown>
): void {
  if (!request.auth) {
    throw new HttpsError(
      "unauthenticated",
      "User is not authenticated."
    );
  }

  const {uid} = request.data as { uid?: string };

  if (!uid) {
    throw new HttpsError(
      "invalid-argument",
      "Parameter \"uid\" is required."
    );
  }

  if (!_isOwner(request.auth.uid, uid)) {
    throw new HttpsError(
      "permission-denied",
      "Cannot delete another user's document."
    );
  }
}

/**
 * Checks if the authenticated user is the owner.
 *
 * @param {string} authUid - UID from auth.
 * @param {string} docUid - UID from the data.
 * @return {boolean} True if uids match.
 */
function _isOwner(
  authUid: string,
  docUid: string
): boolean {
  return authUid === docUid;
}

/**
 * Recursively deletes all subcollections of a document, then deletes the
 * document itself.
 *
 * @param {FirebaseFirestore.DocumentReference} docRef - Firestore document
 *     reference.
 * @return {Promise<void>} A promise that resolves when deletion is complete.
 */
async function _deleteDocumentRecursively(
  docRef: FirebaseFirestore.DocumentReference
): Promise<void> {
  const collections = await docRef.listCollections();

  await _deleteAllCollections(collections);

  await docRef.delete();
}

/**
 * Iterates over all collections and deletes each.
 *
 * @param {FirebaseFirestore.CollectionReference[]} collections - Array of
 *     Firestore collection references.
 * @return {Promise<void>} A promise that resolves when deletion is complete.
 */
async function _deleteAllCollections(
  collections: FirebaseFirestore.CollectionReference[]
): Promise<void> {
  if (collections.length === 0) return;

  for (const collection of collections) {
    await _deleteCollection(collection);
  }
}

/**
 * Deletes all documents in a collection in batches.
 *
 * @param {FirebaseFirestore.CollectionReference} collectionRef - Firestore
 *     collection reference.
 * @return {Promise<void>} A promise that resolves when deletion is complete.
 */
async function _deleteCollection(
  collectionRef: FirebaseFirestore.CollectionReference
): Promise<void> {
  const batchSize = 500;
  const query = collectionRef.limit(batchSize);

  await _deleteQueryBatch(query, batchSize);
}

/**
 * Deletes documents returned by the query in batches of "batchSize".
 * Recursively calls itself if more documents remain.
 *
 * @param {FirebaseFirestore.Query} query - Firestore query.
 * @param {number} batchSize - Number of documents per batch.
 * @return {Promise<void>} A promise that resolves when deletion is complete.
 */
async function _deleteQueryBatch(
  query: FirebaseFirestore.Query,
  batchSize: number
): Promise<void> {
  const snapshot = await query.get();

  if (snapshot.empty) return;

  await _commitBatch(snapshot.docs);

  if (_hasMaxBatchSize(snapshot, batchSize)) {
    await _deleteQueryBatch(query, batchSize);
  }
}

/**
 * Checks if the query snapshot size equals the batch size.
 *
 * @param {FirebaseFirestore.QuerySnapshot} snapshot - Firestore query
 *     snapshot.
 * @param {number} batchSize - Batch size limit.
 * @return {boolean} True if snapshot size equals batchSize.
 */
function _hasMaxBatchSize(
  snapshot: FirebaseFirestore.QuerySnapshot,
  batchSize: number
): boolean {
  return snapshot.size === batchSize;
}

/**
 * Commits a batch deletion of the provided documents.
 *
 * @param {FirebaseFirestore.QueryDocumentSnapshot[]} docs - Array of
 *     Firestore document snapshots.
 * @return {Promise<void>} A promise that resolves when the batch commit is
 *     complete.
 */
async function _commitBatch(
  docs: FirebaseFirestore.QueryDocumentSnapshot[]
): Promise<void> {
  const batch = admin.firestore().batch();

  docs.forEach((doc) => batch.delete(doc.ref));

  await batch.commit();
}
