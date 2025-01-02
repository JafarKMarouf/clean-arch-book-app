part of '../../index.dart';

abstract class SearchRemoteDataSource {
  Future<List<BookEntity>> fetchSearchResult({
    required String title,
    int pageNumber = 0,
  });
}

class SearchRemoteDataSourceImpl extends SearchRemoteDataSource {
  final ApiService apiService;

  SearchRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchSearchResult({
    required String title,
    int pageNumber = 0,
  }) async {
    var data = await apiService.get(
      endPoint:
          'volumes?q=$title&startIndex=${pageNumber * paginationNumber}&maxResults=20',
    );

    List<BookEntity> results = parseToBookModel(data);
    saveBooksData(results, kSearchBox);
    return results;
  }
}
