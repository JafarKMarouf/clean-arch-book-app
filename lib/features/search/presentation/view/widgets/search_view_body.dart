// part of '../../../index.dart';

import 'package:clean_arch_bookly_app/features/search/index.dart';
import 'package:clean_arch_bookly_app/features/search/presentation/view/widgets/custome_search_text_field.dart';
import 'package:clean_arch_bookly_app/features/search/presentation/view/widgets/search_items_list_view_bloc_consumer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late ScrollController _scrollController;
  var nextPage = 1;
  var isLoading = false;
  var cubit = BlocProvider.of<SearchBookCubit>;

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
        await cubit(context).fetchSearchBooks(
          title: cubit(context).searchController.text,
          pageNumber: nextPage++,
        );
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
            slivers: const [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(height: 15),
                    CustomeSearchTextField(),
                    SizedBox(height: 30),
                    SearchItemsListViewBlocConsumer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
