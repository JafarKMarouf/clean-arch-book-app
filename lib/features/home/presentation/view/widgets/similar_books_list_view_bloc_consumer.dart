import 'package:clean_arch_bookly_app/features/home/presentation/view/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../index.dart';

class SimilarBooksListViewBlocConsumer extends StatefulWidget {
  const SimilarBooksListViewBlocConsumer({super.key});

  @override
  State<SimilarBooksListViewBlocConsumer> createState() =>
      _SimilarBooksListViewBlocConsumerState();
}

class _SimilarBooksListViewBlocConsumerState
    extends State<SimilarBooksListViewBlocConsumer> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<FetchFeaturedBooksCubit>(context).fetchFeaturedBook();
  }

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
          return SimilarBooksListView(bookItemList: booksList);
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
