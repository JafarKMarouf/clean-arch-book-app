part of '../../../index.dart';

class RatingBooksLoadingIndicator extends StatelessWidget {
  const RatingBooksLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Skeletonizer(
          child: Container(
            width: 24,
            height: 24,
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 6.3),
        Text(
          '5',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(width: 9),
        Opacity(
          opacity: .5,
          child: Text(
            '(223)',
            style: AppStyles.styleRegular14(context),
          ),
        ),
      ],
    );
  }
}
