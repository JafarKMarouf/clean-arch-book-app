part of '../../index.dart';

class BookItemDetailsLoadingIndicator extends StatelessWidget {
  const BookItemDetailsLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Skeletonizer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .4,
              child: Text(
                'Programming and Problem Solving with Java',
                style: AppStyles.styleRegular16(context),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 2),
            Opacity(
              opacity: .7,
              child: Text(
                'Nell B. Dale',
                style: AppStyles.styleMedium14(context),
              ),
            ),
            Row(
              children: [
                Text(
                  'Free',
                  style: AppStyles.styleBold18(context),
                ),
                const Spacer(),
                const RatingBooksLoadingIndicator(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
