import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../../../../../core/index.dart';
import '../../../index.dart';
import 'package:flutter/material.dart';

class SearchItemsListViewBlocConsumer extends StatefulWidget {
  const SearchItemsListViewBlocConsumer({super.key});

  @override
  State<SearchItemsListViewBlocConsumer> createState() =>
      _SearchItemsListViewBlocConsumerState();
}

class _SearchItemsListViewBlocConsumerState
    extends State<SearchItemsListViewBlocConsumer> {
  List<SearchEntity> booksList = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBookCubit, SearchBooksState>(
      listener: (context, state) {
        if (state is SearchBooksSuccess) {
          booksList.addAll(state.searchEntity);
        }
        if (state is SearchBooksFailure) {
          Get.snackbar('Error', state.errMsg);
        }
      },
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return SearchItemsListView(searchResultList: state.searchEntity);
        } else if (state is SearchBooksFailure) {
          return Text(state.errMsg);
        } else if (state is SearchBooksLoading) {
          return const BooksListViewLoadingIndicator();
        } else {
          return Container();
        }
      },
    );
  }
}
