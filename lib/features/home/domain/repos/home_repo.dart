import 'package:dartz/dartz.dart';
import 'package:hellllllo/core/errors/Failure.dart';
import 'package:hellllllo/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFutureBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
