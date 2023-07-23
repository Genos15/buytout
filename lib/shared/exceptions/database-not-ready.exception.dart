class DatabaseNotReadyException implements Exception {
  String get message => 'the database is not opened';
}
