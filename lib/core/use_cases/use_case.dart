import 'package:dartz/dartz.dart';
import 'package:hellllllo/core/errors/Failure.dart';

abstract class UseCase<Type, Prama> {
  Future<Either<Failure, Type>> call([Prama prama]);
}
