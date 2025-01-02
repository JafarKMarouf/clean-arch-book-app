import 'package:clean_arch_bookly_app/core/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../index.dart';
import 'books_list_view_bloc_consumer.dart';
import 'featured_books_list_view_bloc_consumer.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  late ScrollController _scrollController;
  var nextPage = 1;
  var isLoading = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() async {
    double currentPosition = _scrollController.position.pixels;
    double maxLength = _scrollController.position.maxScrollExtent;
    if (currentPosition >= maxLength * 0.7) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<FetchNewestBooksCubit>(context)
            .fetchNewestBooks(pageNumber: nextPage++);
        isLoading = false;
      }
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ScrollConfiguration(
          behavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {
              PointerDeviceKind.mouse,
              PointerDeviceKind.touch,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown,
            },
          ),
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomeHomeAppBar(),
                    const SizedBox(height: 44),
                    const FeaturedBooksListViewBlocConsumer(),
                    const SizedBox(height: 51),
                    Text(
                      'Best Seller',
                      style: AppStyles.styleSemiBold18(context),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const SliverToBoxAdapter(
                child: BooksListViewBlocConsumer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
