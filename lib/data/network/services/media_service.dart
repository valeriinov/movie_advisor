import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../dto/movie/movie_short_data_dto.dart';
import '../../dto/movie/movie_watch_event_data_dto.dart';
import '../../dto/series/series_short_data_dto.dart';
import '../../dto/series/series_watch_event_data_dto.dart';
import '../constants/db_path.dart';

class MediaService {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  MediaService({
    required FirebaseFirestore firebaseFirestore,
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth,
       _firebaseFirestore = firebaseFirestore;

  Future<List<MovieShortDataDto>> getMovies() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return [];

    final snapshot = await _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.moviesCollection)
        .get();

    return snapshot.docs
        .map((doc) => MovieShortDataDto.fromJson(doc.data()))
        .toList();
  }

  Future<void> updateOrInsertMovie(MovieShortDataDto data) async {
    final user = _firebaseAuth.currentUser;
    if (user == null || data.id == null) return;

    final docRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.moviesCollection)
        .doc(data.id.toString());

    await docRef.set(data.toJson(), SetOptions(merge: true));
  }

  Future<void> updateOrInsertMovies(List<MovieShortDataDto> movies) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return;

    final moviesCollectionRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.moviesCollection);

    final batch = _firebaseFirestore.batch();

    for (final movie in movies) {
      if (movie.id == null) continue;

      final docRef = moviesCollectionRef.doc(movie.id.toString());

      batch.set(docRef, movie.toJson(), SetOptions(merge: true));
    }

    await batch.commit();
  }

  Future<List<SeriesShortDataDto>> getSeries() async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return [];

    final snapshot = await _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.seriesCollection)
        .get();

    return snapshot.docs
        .map((doc) => SeriesShortDataDto.fromJson(doc.data()))
        .toList();
  }

  Future<void> updateOrInsertSeries(SeriesShortDataDto data) async {
    final user = _firebaseAuth.currentUser;
    if (user == null || data.id == null) return;

    final docRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.seriesCollection)
        .doc(data.id.toString());

    await docRef.set(data.toJson(), SetOptions(merge: true));
  }

  Future<void> updateOrInsertSeriesList(
    List<SeriesShortDataDto> seriesList,
  ) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return;

    final seriesCollectionRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.seriesCollection);

    final batch = _firebaseFirestore.batch();

    for (final series in seriesList) {
      if (series.id == null) continue;

      final docRef = seriesCollectionRef.doc(series.id.toString());

      batch.set(docRef, series.toJson(), SetOptions(merge: true));
    }

    await batch.commit();
  }

  Future<void> updateMoviePartial(int id, Map<String, dynamic> data) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return;

    final docRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.moviesCollection)
        .doc(id.toString());

    await docRef.update(data);
  }

  Future<void> updateSeriesPartial(int id, Map<String, dynamic> data) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return;

    final docRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.seriesCollection)
        .doc(id.toString());

    await docRef.update(data);
  }

  Future<void> addMovieEvent(MovieWatchEventDataDto data) async {
    final user = _firebaseAuth.currentUser;
    if (user == null || data.tmdbId == null || data.id == null) return;

    final docRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.moviesCollection)
        .doc(data.tmdbId.toString())
        .collection(DbPath.eventsCollection)
        .doc(data.id.toString());

    await docRef.set(data.toJson(), SetOptions(merge: true));
  }

  Future<void> addSeriesEvent(SeriesWatchEventDataDto data) async {
    final user = _firebaseAuth.currentUser;
    if (user == null || data.tmdbId == null || data.id == null) return;

    final docRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.seriesCollection)
        .doc(data.tmdbId.toString())
        .collection(DbPath.eventsCollection)
        .doc(data.id.toString());

    await docRef.set(data.toJson(), SetOptions(merge: true));
  }

  Future<List<MovieWatchEventDataDto>> getMovieEvents(int movieId) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return [];

    final snapshot = await _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.moviesCollection)
        .doc(movieId.toString())
        .collection(DbPath.eventsCollection)
        .get();

    return snapshot.docs
        .map((doc) => MovieWatchEventDataDto.fromJson(doc.data()))
        .toList();
  }

  Future<List<SeriesWatchEventDataDto>> getSeriesEvents(int seriesId) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return [];

    final snapshot = await _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.seriesCollection)
        .doc(seriesId.toString())
        .collection(DbPath.eventsCollection)
        .get();

    return snapshot.docs
        .map((doc) => SeriesWatchEventDataDto.fromJson(doc.data()))
        .toList();
  }

  Future<void> updateOrInsertMovieEvents(
    int movieId,
    List<MovieWatchEventDataDto> events,
  ) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return;

    final eventsCollectionRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.moviesCollection)
        .doc(movieId.toString())
        .collection(DbPath.eventsCollection);

    final batch = _firebaseFirestore.batch();

    for (final event in events) {
      if (event.id == null) continue;

      final docRef = eventsCollectionRef.doc(event.id.toString());

      batch.set(docRef, event.toJson(), SetOptions(merge: true));
    }

    await batch.commit();
  }

  Future<void> updateOrInsertSeriesEvents(
    int seriesId,
    List<SeriesWatchEventDataDto> events,
  ) async {
    final user = _firebaseAuth.currentUser;
    if (user == null) return;

    final eventsCollectionRef = _firebaseFirestore
        .collection(DbPath.usersMediaCollection)
        .doc(user.uid)
        .collection(DbPath.seriesCollection)
        .doc(seriesId.toString())
        .collection(DbPath.eventsCollection);

    final batch = _firebaseFirestore.batch();

    for (final event in events) {
      if (event.id == null) continue;

      final docRef = eventsCollectionRef.doc(event.id.toString());

      batch.set(docRef, event.toJson(), SetOptions(merge: true));
    }

    await batch.commit();
  }
}
