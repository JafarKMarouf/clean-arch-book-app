part of '../../../index.dart';

class FetchFeaturedBooksCubit extends Cubit<FetchFeaturedBooksState> {
  FetchFeaturedBooksCubit(this.featuredBooksUseCase)
      : super(FetchFeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBook() async {
    emit(FetchFeaturedBookLoading());
    var result = await featuredBooksUseCase.call();
    result.fold((fail) {
      emit(FetchFeaturedBookFailure(errMsg: fail.toString()));
    }, (books) {
      emit(FetchFeaturedBookSuccess(bookEntity: books));
    });
  }
}
