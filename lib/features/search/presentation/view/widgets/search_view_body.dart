part of '../../../index.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CustomeSearchTextField(),
                  SizedBox(height: 30),
                  SearchItemsListView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
