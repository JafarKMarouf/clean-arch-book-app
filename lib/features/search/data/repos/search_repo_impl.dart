part of '../../index.dart';

class SearchRepoImpl extends SearchRepo {
  final SearchRemoteDataSource searchRemoteDataSource;
  final SearchLocalDataSource searchLocalDataSource;

  SearchRepoImpl({
    required this.searchLocalDataSource,
    required this.searchRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<BookEntity>>> fetchSearchBooks({
    int pageNumber = 0,
    required String title,
  }) async {
    try {
      List<BookEntity> result;

      result = searchLocalDataSource.fetchSearchResult(
        pageNumber: pageNumber,
        title: title,
      );

      if (result.isNotEmpty) {
        return right(result);
      }

      result = await searchRemoteDataSource.fetchSearchResult(
        pageNumber: pageNumber,
        title: title,
      );

      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
