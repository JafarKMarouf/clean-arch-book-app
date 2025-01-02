part of '../../../index.dart';

class SearchBookCubit extends Cubit<SearchBooksState> {
  SearchBookCubit(this.searchBooksUseCase) : super(SearchBooksInitial());

  final FetchSearchBooksUseCase searchBooksUseCase;
  final TextEditingController searchController = TextEditingController();
  Future<void> fetchSearchBooks({
    int pageNumber = 0,
    required String title,
  }) async {
    if (pageNumber == 0) {
      emit(SearchBooksLoading());
    }
    var results = await searchBooksUseCase.call(pageNumber, title);
    results.fold((fail) {
      emit(SearchBooksFailure(errMsg: fail.errMessage));
    }, (result) {
      emit(SearchBooksSuccess(searchEntity: result));
    });
  }
}
