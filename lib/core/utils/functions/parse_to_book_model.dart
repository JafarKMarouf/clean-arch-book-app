part of '../../index.dart';

List<BookEntity> parseToBookModel(Map<String, dynamic> data) {
  List<BookEntity> books = [];

  for (var book in data['items']) {
    books.add(BookItem.fromJson(book));
  }

  return books;
}
