import 'package:dartz/dartz.dart';
import 'package:hellllllo/core/errors/failure.dart';
import 'package:hellllllo/features/home/data/data_sources/home_local_data_source.dart';
import 'package:hellllllo/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:hellllllo/features/home/domain/entities/book_entity.dart';
import 'package:hellllllo/features/home/domain/repos/home_repo.dart';

class HomeReposImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeReposImpl(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<failure, List<BookEntity>>> fetchFutureBooks() async {
    try {
      var bookslist = homeLocalDataSource.fetchFutureBooks();
      if (bookslist.isNotEmpty) {
        return right(bookslist);
      }
      var books = await homeRemoteDataSource.fetchFutureBooks();
      return right(books);
    } catch (e) {
      return left(failure());
    }
  }

  @override
  Future<Either<failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      return left(failure());
    }
  }
}
