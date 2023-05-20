sealed class Result<T> {}

class Success<T> extends Result<T> {
  final T data;

  Success(this.data);
}

class Failure<T> extends Result<T> {
  final Exception exception;

  Failure(this.exception);
}

class Loading<T> extends Result<T> {}

class Idle<T> extends Result<Never> {}
