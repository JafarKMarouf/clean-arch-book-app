import 'package:clean_arch_bookly_app/features/home/presentation/view/widgets/featured_books_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../index.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewBlocBuilder extends StatefulWidget {
  const FeaturedBooksListViewBlocBuilder({super.key});

  @override
  State<FeaturedBooksListViewBlocBuilder> createState() =>
      _FeaturedBooksListViewBlocBuilderState();
}

class _FeaturedBooksListViewBlocBuilderState
    extends State<FeaturedBooksListViewBlocBuilder> {
  List<BookEntity> booksList = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FetchFeaturedBooksCubit, FetchFeaturedBooksState>(
      listener: (context, state) {
        if (state is FetchFeaturedBookSuccess) {
          booksList.addAll(state.bookEntity);
        }
      },
      builder: (context, state) {
        if (state is FetchFeaturedBookSuccess ||
            state is FetchFeaturedBookPaginationLoading) {
          return FeaturedBooksListView(books: booksList);
        } else if (state is FetchFeaturedBookFailure) {
          return Text(state.errMsg);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
