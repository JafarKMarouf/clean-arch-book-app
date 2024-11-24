part of '../../../index.dart';

class BestSellerItemDetails extends StatelessWidget {
  const BestSellerItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * .4,
            child: Text(
              'Harry Potter and the Goblet of Fire',
              style: AppStyles.styleRegular20(context),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 2),
          Opacity(
            opacity: .7,
            child: Text(
              'J.K. Rowling',
              style: AppStyles.styleMedium14(context),
            ),
          ),
          Row(
            children: [
              Text(
                '19.99 €',
                style: AppStyles.styleBold20(context),
              ),
              const Spacer(),
              const RatingBooks(),
            ],
          ),
        ],
      ),
    );
  }
}
