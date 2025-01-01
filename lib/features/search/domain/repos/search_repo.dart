part of '../../index.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<SearchEntity>>> fetchSearchBooks({
    int pageNumber = 0,
    required String title,
  });
}
