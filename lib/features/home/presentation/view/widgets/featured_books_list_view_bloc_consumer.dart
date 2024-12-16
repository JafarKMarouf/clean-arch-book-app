import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../index.dart';
import 'package:flutter/material.dart';

import 'featured_books_list_view.dart';

class FeaturedBooksListViewBlocConsumer extends StatefulWidget {
  const FeaturedBooksListViewBlocConsumer({super.key});

  @override
  State<FeaturedBooksListViewBlocConsumer> createState() =>
      _FeaturedBooksListViewBlocConsumerState();
}

class _FeaturedBooksListViewBlocConsumerState
    extends State<FeaturedBooksListViewBlocConsumer> {
  List<BookEntity> booksList = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      listener: (context, state) {
        if (state is FetchFeaturedBookSuccess) {
          booksList.addAll(state.bookEntity);
        }
        if (state is FetchFeaturedBookPaginationFailure) {
          Get.snackbar('Error', state.errMsg);
        }
      },
      builder: (context, state) {
        if (state is FetchFeaturedBookSuccess ||
            state is FetchFeaturedBookPaginationLoading ||
            state is FetchFeaturedBookPaginationFailure) {
          return FeaturedBooksListView(books: booksList);
        } else if (state is FetchFeaturedBookFailure) {
          return Text(state.errMsg);
        } else {
          return const Skeletonizer(
            child: FeaturedBooksListViewLoadingIndicator(),
          );
        }
      },
    );
  }
}
