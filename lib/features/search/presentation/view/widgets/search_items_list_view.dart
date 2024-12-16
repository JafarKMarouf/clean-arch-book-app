part of '../../../index.dart';

class SearchItemsListView extends StatelessWidget {
  const SearchItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          // child: BookListViewItem(),
        );
      },
    );
  }
}
