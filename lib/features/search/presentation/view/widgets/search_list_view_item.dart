part of '../../../index.dart';

class SearchListViewItem extends StatelessWidget {
  const SearchListViewItem({super.key, required this.bookItem});
  final BookEntity bookItem;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          AppPages.bookDetails,
          arguments: {'book_item': bookItem},
        );
      },
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .17,
            child: CustomeBookImage(image: bookItem.image!),
          ),
          const SizedBox(width: 30),
          SearchBookItemDetails(booksItem: bookItem),
        ],
      ),
    );
  }
}
