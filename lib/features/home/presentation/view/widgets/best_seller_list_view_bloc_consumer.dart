import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'package:skeletonizer/skeletonizer.dart';

import '../../../index.dart';
import 'package:flutter/material.dart';

class BestSellerListViewBlocConsumer extends StatefulWidget {
  const BestSellerListViewBlocConsumer({super.key});

  @override
  State<BestSellerListViewBlocConsumer> createState() =>
      _BestSellerListViewBlocConsumerState();
}

class _BestSellerListViewBlocConsumerState
    extends State<BestSellerListViewBlocConsumer> {
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
          return BestSellerListView(bookItem: booksList);
        } else if (state is FetchNewestBooksFailure) {
          return Text(state.errMsg);
        } else {
          return const Skeletonizer(
            child: BestSellerListViewLoadingIndicator(),
          );
        }
      },
    );
  }
}
