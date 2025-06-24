import 'package:dartz/dartz.dart';
import 'package:hellllllo/core/errors/failure.dart';

abstract class UseCase<Type, Prama> {
  Future<Either<failure, Type>> call([Prama prama]);
}
