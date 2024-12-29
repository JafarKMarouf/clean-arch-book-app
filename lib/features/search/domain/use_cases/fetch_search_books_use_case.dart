part of '../../index.dart';

class FetchSearchBooksUseCase extends UseCase<List<SearchEntity>, int> {
  final SearchRepo searchRepo;

  FetchSearchBooksUseCase({required this.searchRepo});

  @override
  Future<Either<Failure, List<SearchEntity>>> call([int param = 0]) async {
    return await searchRepo.fetchSearchBooks();
  }
}
