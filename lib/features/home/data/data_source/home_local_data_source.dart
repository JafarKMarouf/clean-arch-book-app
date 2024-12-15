part of '../../index.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0});
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImp extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startIndex = pageNumber * paginationNumber;
    int endIndex = (pageNumber + 1) * paginationNumber;

    var books = Hive.box<BookEntity>(kFeaturedBox);

    int length = books.values.length;
    if (startIndex >= length || endIndex > length) return [];
    return books.values.toList().sublist(startIndex, endIndex);
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var books = Hive.box<BookEntity>(kNewestBox);
    return books.values.toList();
  }
}
