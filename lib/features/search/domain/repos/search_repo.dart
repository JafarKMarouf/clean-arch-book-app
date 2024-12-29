part of '../../index.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<SearchEntity>>> fetchSearchBooks(
      // {required int pageNumber}
      );
}
