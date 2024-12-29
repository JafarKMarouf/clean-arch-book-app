import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../index.dart';

class FeaturedBooksListView extends StatefulWidget {
  const FeaturedBooksListView({super.key, required this.books});
  final List<BookEntity> books;

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
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
        await BlocProvider.of<FetchFeaturedBooksCubit>(context)
            .fetchFeaturedBook(pageNumber: nextPage++);
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
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .25,
      child: ScrollConfiguration(
        behavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown,
          },
        ),
        child: ListView.builder(
          controller: _scrollController,
          padding: EdgeInsets.zero,
          itemCount: widget.books.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CustomeBookImage(image: widget.books[index].image!),
            );
          },
        ),
      ),
    );
  }
}
