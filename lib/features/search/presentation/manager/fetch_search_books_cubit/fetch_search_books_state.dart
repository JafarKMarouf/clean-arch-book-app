part of '../../../index.dart';

@immutable
sealed class FetchSearchBooksState {}

final class FetchSearchBooksInitial extends FetchSearchBooksState {}

final class FetchSearchBooksLoading extends FetchSearchBooksState {}

final class FetchSearchBooksFailure extends FetchSearchBooksState {
  final String errMsg;

  FetchSearchBooksFailure({required this.errMsg});
}

final class FetchSearchBooksSucsess extends FetchSearchBooksState {
  final List<SearchEntity> results;
  FetchSearchBooksSucsess({
    required this.results,
  });
}
