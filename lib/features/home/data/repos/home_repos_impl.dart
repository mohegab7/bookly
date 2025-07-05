import 'package:dartz/dartz.dart';
import 'package:hellllllo/core/errors/failure.dart';
import 'package:hellllllo/features/home/domain/entities/book_entity.dart';
import 'package:hellllllo/features/home/domain/repos/home_repo.dart';

class HomeReposImpl extends HomeRepo {
  @override
  Future<Either<failure, List<BookEntity>>> fetchFutureBooks() {
    // TODO: implement fetchFutureBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<failure, List<BookEntity>>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}