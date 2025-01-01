part of '../../index.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, int, void> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([
    int firstParam = 0,
    secondParam,
  ]) async {
    return await homeRepo.fetchNewestBooks(
      pageNumber: firstParam,
    );
  }
}
