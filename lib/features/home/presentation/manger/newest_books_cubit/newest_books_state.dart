import 'package:hellllllo/features/home/domain/entities/book_entity.dart';

abstract class Newestbooksstates {}

class NewestBookInitial extends Newestbooksstates {}

class NewestBookLoading extends Newestbooksstates {}

class NewestBookFailure extends Newestbooksstates {
  final String errmessage;

  NewestBookFailure(this.errmessage);
}

class NewestBookSuccess extends Newestbooksstates {
  final List<BookEntity> books;

  NewestBookSuccess(this.books);
}
