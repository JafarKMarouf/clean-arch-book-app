import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/index.dart';
import '../../../index.dart';
import 'package:flutter/material.dart';

class SearchItemsListViewBlocBuilder extends StatefulWidget {
  const SearchItemsListViewBlocBuilder({super.key});

  @override
  State<SearchItemsListViewBlocBuilder> createState() =>
      _SearchItemsListViewBlocBuilderState();
}

class _SearchItemsListViewBlocBuilderState
    extends State<SearchItemsListViewBlocBuilder> {
  List<SearchEntity> booksList = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return SearchItemsListView(searchResultList: state.searchEntity);
        } else if (state is SearchBooksFailure) {
          return Text(state.errMsg);
        } else {
          return const BooksListViewLoadingIndicator();
        }
      },
    );
  }
}
