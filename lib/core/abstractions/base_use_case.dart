import 'package:dartz/dartz.dart';

abstract class BaseUseCase<T extends BaseRepository, V> {
  final T repository;

  BaseUseCase(this.repository);

  Future<Either<Failure, V>> execute();
}

class Failure {
  final String infoMessage;
  final String debugMessage;

  Failure({required this.infoMessage, required this.debugMessage});
}

abstract class BaseRepository {
}