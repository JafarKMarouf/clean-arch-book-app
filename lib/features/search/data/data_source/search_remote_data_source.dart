part of '../../index.dart';

abstract class SearchRemoteDataSource {
  Future<List<SearchEntity>> fetchSearchResult({
    required String title,
    int pageNumber = 0,
  });
}

class SearchRemoteDataSourceImpl extends SearchRemoteDataSource {
  final ApiService apiService;

  SearchRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<SearchEntity>> fetchSearchResult({
    required String title,
    int pageNumber = 0,
  }) async {
    var data = await apiService.get(
      endPoint:
          '/volumes?q=$title&startIndex=${pageNumber * paginationNumber}&maxResults=40',
    );

    List<SearchEntity> searchResult = parseToSearchModel(data);
    // save to local storage
    return searchResult;
  }
}
