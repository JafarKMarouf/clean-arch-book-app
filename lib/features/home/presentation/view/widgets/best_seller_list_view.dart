part of '../../../index.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.bookItem});
  final List<BookEntity> bookItem;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: bookItem.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: BookListViewItem(
            bookItem: bookItem[index],
          ),
        );
      },
    );
  }
}
