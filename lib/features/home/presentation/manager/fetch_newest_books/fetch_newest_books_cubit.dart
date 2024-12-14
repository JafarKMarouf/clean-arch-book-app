part of '../../../index.dart';

class FetchNewestBooksCubit extends Cubit<FetchNewestBooksState> {
  FetchNewestBooksCubit(this.newestBooksUseCase)
      : super(FetchNewestBooksInitial());

  final FetchNewestBooksUseCase newestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(FetchNewestBooksLoading());
    var result = await newestBooksUseCase.call();

    result.fold((fail) {
      emit(FetchNewestBooksFailure(errMsg: fail.errMessage));
    }, (books) {
      emit(FetchNewestBooksSuccess(books: books));
    });
  }
}
