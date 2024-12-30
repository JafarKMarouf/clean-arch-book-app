part of '../../index.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int, void> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([
    int firstParam = 0,
    secondParam,
  ]) async {
    return await homeRepo.fetchFeaturedBooks(pageNumber: firstParam);
  }
}
