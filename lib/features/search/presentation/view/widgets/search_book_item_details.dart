part of '../../../index.dart';

class SearchBookItemDetails extends StatelessWidget {
  const SearchBookItemDetails({super.key, required this.booksItem});
  final SearchEntity booksItem;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .4,
            child: Text(
              booksItem.title ?? '',
              style: AppStyles.styleRegular16(context),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 2),
          Opacity(
            opacity: .7,
            child: Text(
              booksItem.author ?? '',
              style: AppStyles.styleMedium14(context),
            ),
          ),
          Row(
            children: [
              Text(
                booksItem.price == 0 ? 'Free' : '${booksItem.price}',
                style: AppStyles.styleBold18(context),
              ),
              const Spacer(),
              RatingBooks(
                averageRating: booksItem.averageRating,
                ratingsCount: booksItem.ratingsCount,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
