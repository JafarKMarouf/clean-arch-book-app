part of '../../index.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImp extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImp(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
      endPoint: 'volumes?q=programming&Filtering=free-ebooks',
    );
    List<BookEntity> books = parseToBookModel(data);
    saveBooksData(books, kFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
      endPoint: 'volumes?q=programming&Filtering=free-ebooks&sorting=newest',
    );
    List<BookEntity> books = parseToBookModel(data);
    saveBooksData(books, kNewestBox);
    return books;
  }
}
