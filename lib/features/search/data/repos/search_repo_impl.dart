part of '../../index.dart';

class SearchRepoImpl extends SearchRepo {
  final SearchRemoteDataSource searchRemoteDataSource;
  final SearchLocalDataSource searchLocalDataSource;

  SearchRepoImpl({
    required this.searchLocalDataSource,
    required this.searchRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<SearchEntity>>> fetchSearchBooks({
    int pageNumber = 0,
    required String title,
  }) async {
    try {
      List<SearchEntity> result;

      result = searchLocalDataSource.fetchSearchResult(
        pageNumber: pageNumber,
        title: title,
      );
      if (result.isNotEmpty) {
        // log('+++++++result from local storage:$result++++++');
        return right(result);
      }
      result = await searchRemoteDataSource.fetchSearchResult(
        pageNumber: pageNumber,
        title: title,
      );
      log('+++++++result from remote storage:$result++++++');

      return right(result);
    } catch (e) {
      // e.printError();
      if (e is DioException) {
        log('++++++++++++dio exepcetion error: ${e.error}+++++++++++');
        log('++++++++++++dio exepcetion message: ${e.response}+++++++++++');
        log('++++++++++++dio exepcetion type: ${e.type}+++++++++++');
        return left(ServerFailure.fromDioError(e));
      }
      log('+++++++error:${e.toString()}+++++++++');

      return left(ServerFailure(e.toString()));
    }
  }
}
