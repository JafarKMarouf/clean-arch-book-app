part of '../../index.dart';

abstract class SearchLocalDataSource {
  List<SearchEntity> fetchSearchResult({
    required String title,
    int pageNumber = 0,
  });
}

class SearchLocalDataSourceImpl extends SearchLocalDataSource {
  @override
  List<SearchEntity> fetchSearchResult({
    required String title,
    int pageNumber = 0,
  }) {
    int startIndex = pageNumber * paginationNumber;
    int endIndex = (pageNumber + 1) * paginationNumber;

    var result = Hive.box<SearchEntity>(kSearchBox);

    int length = result.values.length;
    if (startIndex >= length || endIndex > length) return [];
    return result.values.toList().sublist(startIndex, endIndex);
  }
}
