import 'package:dartz/dartz.dart';
import 'package:hellllllo/core/errors/failure.dart';
import 'package:hellllllo/core/use_cases/use_case.dart';
import 'package:hellllllo/features/home/domain/entities/book_entity.dart';
import 'package:hellllllo/features/home/domain/repos/home_repo.dart';

class FetchFeaturedcBooksUseCase extends UseCase<List<BookEntity>, NoPrama> {
  final HomeRepo homeRepo;

  FetchFeaturedcBooksUseCase(this.homeRepo);

  @override
  Future<Either<failure, List<BookEntity>>> call([NoPrama? prama]) async {
    return await homeRepo.fetchFutureBooks();
  }
}

class NoPrama {}
