part of '../../../index.dart';

class InfosBookDetails extends StatelessWidget {
  const InfosBookDetails({super.key, required this.bookItem});
  final BookEntity bookItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          bookItem.title ?? 'The Jungle Book',
          style: AppStyles.styleRegular23(context),
        ),
        const SizedBox(height: 5),
        Opacity(
          opacity: .7,
          child: Text(
            bookItem.author ?? 'Rudyard Kipling',
            style: AppStyles.styleMedium18(context),
          ),
        ),
        const SizedBox(height: 14),
        RatingBooks(
          mainAxisAlignment: MainAxisAlignment.center,
          averageRating: bookItem.averageRating,
          ratingsCount: bookItem.ratingsCount,
        ),
      ],
    );
  }
}
