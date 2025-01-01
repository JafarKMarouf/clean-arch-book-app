import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../../core/index.dart';
import '../../../index.dart';
import 'package:flutter/material.dart';

class BooksListViewBlocConsumer extends StatefulWidget {
  const BooksListViewBlocConsumer({super.key});

  @override
  State<BooksListViewBlocConsumer> createState() =>
      _BooksListViewBlocConsumerState();
}

class _BooksListViewBlocConsumerState extends State<BooksListViewBlocConsumer> {
  List<BookEntity> booksList = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchNewestBooksCubit, FetchNewestBooksState>(
      listener: (context, state) {
        if (state is FetchNewestBooksSuccess) {
          booksList.addAll(state.books);
        }
        if (state is FetchNewestBooksFailure) {
          Get.snackbar('Error', state.errMsg);
        }
      },
      builder: (context, state) {
        if (state is FetchNewestBooksSuccess ||
            state is FetchNewestBooksPaginationLoading ||
            state is FetchNewestBooksPaginationFailure) {
          return BooksListView(bookItem: booksList);
        } else if (state is FetchNewestBooksFailure) {
          return Text(state.errMsg);
        } else {
          return const BooksListViewLoadingIndicator();
        }
      },
    );
  }
}
