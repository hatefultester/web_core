import 'package:dartz/dartz.dart';

abstract class BaseUseCase<T extends BaseRepository, P, V> {
  final T repository;

  String get failureDisplayMessage;

  BaseUseCase(this.repository);

  Future<Either<Failure, V>> execute({required P params});
}

class Failure {
  final String infoMessage;
  final String debugMessage;

  Failure({required this.infoMessage, this.debugMessage = ''});
}

abstract class BaseRepository {
}