import 'package:hellllllo/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksdata(List<BookEntity> books, String boxname) {
  var box = Hive.box(boxname);
  box.addAll(books);
}
