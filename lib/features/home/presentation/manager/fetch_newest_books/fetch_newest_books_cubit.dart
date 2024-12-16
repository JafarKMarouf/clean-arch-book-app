part of '../../../index.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.newestBooksUseCase)
      : super(FetchNewestBooksInitial());

  final FetchNewestBooksUseCase newestBooksUseCase;

  Future<void> fetchNewestBooks({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FetchNewestBooksLoading());
    } else {
      emit(FetchNewestBooksPaginationLoading());
    }
    var result = await newestBooksUseCase.call(pageNumber);

    result.fold((fail) {
      if (pageNumber == 0) {
        emit(FetchNewestBooksFailure(errMsg: fail.errMessage));
      } else {
        emit(FetchNewestBooksPaginationFailure(errMsg: fail.errMessage));
      }
    }, (books) {
      emit(FetchNewestBooksSuccess(books: books));
    });
  }
}
