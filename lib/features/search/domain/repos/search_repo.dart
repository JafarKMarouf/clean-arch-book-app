part of '../../index.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookEntity>>> fetchSearchBooks({
    int pageNumber = 0,
    required String title,
  });
}
