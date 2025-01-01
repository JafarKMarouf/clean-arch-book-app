part of '../../../index.dart';

@immutable
sealed class SearchBooksState {}

final class SearchBooksInitial extends SearchBooksState {}

final class SearchBooksLoading extends SearchBooksState {}

final class SearchBooksFailure extends SearchBooksState {
  final String errMsg;

  SearchBooksFailure({required this.errMsg});
}

final class SearchBooksSuccess extends SearchBooksState {
  final List<SearchEntity> searchEntity;
  SearchBooksSuccess({
    required this.searchEntity,
  });
}
