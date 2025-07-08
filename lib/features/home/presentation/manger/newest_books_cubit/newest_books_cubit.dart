import 'package:bloc/bloc.dart';
import 'package:hellllllo/features/home/domain/use_cases/fetch_news_books_use_case.dart';

import 'package:hellllllo/features/home/presentation/manger/newest_books_cubit/newest_books_state.dart';

class NewestBooksCubit extends Cubit<Newestbooksstates> {
  NewestBooksCubit(this.fetchNewsBooksUseCase) : super(NewestBookInitial());
  final FetchNewsBooksUseCase fetchNewsBooksUseCase;
  Future<void> FetchFeatureBooks() async {
    emit(NewestBookInitial());
    var result = await fetchNewsBooksUseCase.call();
    result.fold((failure) {
      emit(NewestBookFailure(failure.message));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}
