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

    await admin.firestore().recursiveDelete(docRef);

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
