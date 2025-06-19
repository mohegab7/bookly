import 'package:dartz/dartz.dart';
import 'package:hellllllo/core/errors/failure.dart';
import 'package:hellllllo/features/home/domain/entities/book_entity.dart';
import 'package:hellllllo/features/home/domain/repos/home_repo.dart';

class FetchFeaturedcBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedcBooksUseCase(this.homeRepo);
  Future<Either<failure,List<BookEntity>>>fetchFutureBooks(){
    return homeRepo.fetchFutureBooks();
  }
}