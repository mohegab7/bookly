import 'package:dartz/dartz.dart';
import 'package:hellllllo/core/errors/failure.dart';
import 'package:hellllllo/features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<failure, List<BookEntity>>> fetchFutureBooks();
  Future<Either<failure, List<BookEntity>>> fetchNewestBooks();
}
