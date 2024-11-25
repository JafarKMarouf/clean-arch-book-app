part of '../../../index.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppPages.bookDetails);
      },
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .17,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AppImages.imagesTest1),
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          const BookItemDetails(),
        ],
      ),
    );
  }
}