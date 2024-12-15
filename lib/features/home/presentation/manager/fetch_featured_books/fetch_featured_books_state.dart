part of '../../../index.dart';

@immutable
sealed class FetchFeaturedBooksState {}

final class FetchFeaturedBooksInitial extends FetchFeaturedBooksState {}

final class FetchFeaturedBookLoading extends FetchFeaturedBooksState {}

final class FetchFeaturedBookPaginationLoading
    extends FetchFeaturedBooksState {}

final class FetchFeaturedBookFailure extends FetchFeaturedBooksState {
  final String errMsg;

  FetchFeaturedBookFailure({required this.errMsg});
}

final class FetchFeaturedBookPaginationFailure extends FetchFeaturedBooksState {
  final String errMsg;

  FetchFeaturedBookPaginationFailure({required this.errMsg});
}

final class FetchFeaturedBookSuccess extends FetchFeaturedBooksState {
  final List<BookEntity> bookEntity;

  FetchFeaturedBookSuccess({required this.bookEntity});
}
