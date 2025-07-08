import 'package:bloc/bloc.dart';
import 'package:hellllllo/features/home/domain/use_cases/fetch_featuredc_books_use_case.dart';
import 'package:hellllllo/features/home/presentation/manger/feature_books_cubit/feature_books_states.dart';

class featurebookscubit extends Cubit<Featurebooksstates> {
  featurebookscubit(this.featuredcBooksUseCasel) : super(FeaturedBookInitial());
  final FetchFeaturedBooksUseCase featuredcBooksUseCasel;
  Future<void> FetchFeatureBooks() async {
    emit(FeaturedBookInitial());
    var result = await featuredcBooksUseCasel.call();
    result.fold((failure) {
      emit(FeaturedBookFailure(failure.message));
    }, (books) {
      emit(FeaturedBookSuccess(books));
    });
  }
}
