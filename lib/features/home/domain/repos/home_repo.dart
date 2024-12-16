part of '../../index.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({
    required int pageNumber,
  });
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks({
    required int pageNumber,
  });
}
