import 'package:hellllllo/constants/constants.dart';
import 'package:hellllllo/core/utils/api_service.dart';
import 'package:hellllllo/core/utils/function/save_books.dart';
import 'package:hellllllo/features/home/data/models/bookmodel/bookmodel/item.dart';
import 'package:hellllllo/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFutureBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final Api_Service api_service;

  HomeRemoteDataSourceImpl(this.api_service);
  @override
  Future<List<BookEntity>> fetchFutureBooks() async {
    var data = await api_service.get(
        endpoint: 'volumes?Filtring=free-books&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveBooksdata(books, KFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await api_service.get(
        endpoint: 'volumes?Filtring=free-books&Sorting=newest&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveBooksdata(books, KNewestBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookmap in data['items']) {
      books.add(Item.fromJson(bookmap));
    }
    return books;
  }
}
