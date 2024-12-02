part of '../../../index.dart';

@immutable
sealed class FetchNewestBooksState {}

final class FetchNewestBooksInitial extends FetchNewestBooksState {}

final class FetchNewestBooksLoading extends FetchNewestBooksState {}

final class FetchNewestBooksFailure extends FetchNewestBooksState {
  final String errMsg;

  FetchNewestBooksFailure({required this.errMsg});
}

final class FetchNewestBooksSuccess extends FetchNewestBooksState {
  final List<BookEntity> books;

  FetchNewestBooksSuccess({required this.books});
}
