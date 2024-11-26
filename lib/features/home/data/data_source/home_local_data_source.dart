part of '../../index.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var books = Hive.box<BookEntity>(kFeaturedBox);
    return books.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var books = Hive.box<BookEntity>(kNewestBox);
    return books.values.toList();
  }
}
