part of '../../index.dart';

class FetchSearchBooksUseCase extends UseCase<List<SearchEntity>, int, String> {
  final SearchRepo searchRepo;

  FetchSearchBooksUseCase({required this.searchRepo});

  @override
  Future<Either<Failure, List<SearchEntity>>> call([
    int firstParam = 0,
    String? secondParam,
  ]) async {
    return await searchRepo.fetchSearchBooks(
      pageNumber: firstParam,
      title: secondParam ?? "",
    );
  }
}
