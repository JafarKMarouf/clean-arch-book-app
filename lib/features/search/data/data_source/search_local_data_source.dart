part of '../../index.dart';

abstract class SearchLocalDataSource {
  List<BookEntity> fetchSearchResult({
    required String title,
    int pageNumber = 0,
  });
}

class SearchLocalDataSourceImpl extends SearchLocalDataSource {
  @override
  List<BookEntity> fetchSearchResult({
    required String title,
    int pageNumber = 0,
  }) {
    int startIndex = pageNumber * paginationNumber;
    int endIndex = (pageNumber + 1) * paginationNumber;

    var result = Hive.box<BookEntity>(kSearchBox);

    int length = result.values.length;
    if (startIndex >= length || endIndex > length) return [];
    return result.values.toList().sublist(startIndex, endIndex);
  }
}
