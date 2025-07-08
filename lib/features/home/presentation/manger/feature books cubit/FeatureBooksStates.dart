import 'package:hellllllo/features/home/domain/entities/book_entity.dart';

abstract class Featurebooksstates {}

class FeaturedBookInitial extends Featurebooksstates {}

class FeaturedBookLoading extends Featurebooksstates {}

class FeaturedBookFailure extends Featurebooksstates {
  final String errmessage;

  FeaturedBookFailure(this.errmessage);
}

class FeaturedBookSuccess extends Featurebooksstates {
  final List<BookEntity> books;

  FeaturedBookSuccess(this.books);
}
