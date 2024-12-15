part of '../../../index.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit(this.featuredBooksUseCase)
      : super(FetchFeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBook({int pageNumber = 0}) async {
    if (pageNumber == 0) {
      emit(FetchFeaturedBookLoading());
    } else {
      emit(FetchFeaturedBookPaginationLoading());
    }
    var result = await featuredBooksUseCase.call(pageNumber);
    result.fold((fail) {
      emit(FetchFeaturedBookFailure(errMsg: fail.errMessage));
    }, (books) {
      emit(FetchFeaturedBookSuccess(bookEntity: books));
    });
  }
}
