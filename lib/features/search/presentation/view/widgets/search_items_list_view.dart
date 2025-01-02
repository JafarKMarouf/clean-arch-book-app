part of '../../../index.dart';

class SearchItemsListView extends StatelessWidget {
  const SearchItemsListView({super.key, required this.searchResultList});
  final List<BookEntity> searchResultList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: searchResultList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: SearchListViewItem(
            bookItem: searchResultList[index],
          ),
        );
      },
    );
  }
}
