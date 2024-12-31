part of '../../../index.dart';

class FetchSearchBookCubit extends Cubit<FetchSearchBooksState> {
  FetchSearchBookCubit(this.searchBooksUseCase)
      : super(FetchSearchBooksInitial());

  final FetchSearchBooksUseCase searchBooksUseCase;

  Future<void> fetchSearchBooks({
    int pageNumber = 0,
    required String title,
  }) async {
    if (pageNumber == 0) {
      emit(FetchSearchBooksLoading());
    }
    var results = await searchBooksUseCase.call(pageNumber, title);
    results.fold((fail) {
      emit(FetchSearchBooksFailure(errMsg: fail.errMessage));
    }, (result) {
      emit(FetchSearchBooksSucsess(searchEntity: result));
    });
  }
}
