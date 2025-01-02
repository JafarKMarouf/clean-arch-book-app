part of '../../index.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0});
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImp(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({
    int pageNumber = 0,
  }) async {
    var data = await apiService.get(
      endPoint:
          'volumes?q=programming&Filtering=free-ebooks&startIndex=${pageNumber * paginationNumber}',
    );

    List<BookEntity> books = parseToBookModel(data);

    saveBooksData(books, kFeaturedBox);
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks({int pageNumber = 0}) async {
    var data = await apiService.get(
      endPoint:
          'volumes?q=programming&Filtering=free-ebooks&sorting=newest&startIndex=${pageNumber * paginationNumber}&maxResults=20',
    );

    List<BookEntity> books = parseToBookModel(data);

    saveBooksData(books, kNewestBox);
    return books;
  }
}
