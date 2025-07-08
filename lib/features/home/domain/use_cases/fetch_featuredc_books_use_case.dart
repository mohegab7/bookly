import 'package:dartz/dartz.dart';
import 'package:hellllllo/core/errors/Failure.dart';
import 'package:hellllllo/core/use_cases/use_case.dart';
import 'package:hellllllo/features/home/domain/entities/book_entity.dart';
import 'package:hellllllo/features/home/domain/repos/home_repo.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoPrama> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoPrama? prama]) async {
    return await homeRepo.fetchFutureBooks();
  }
}

class NoPrama {}
