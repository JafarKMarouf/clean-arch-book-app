part of '../../../index.dart';

class RatingBooks extends StatelessWidget {
  const RatingBooks({
    super.key,
    this.mainAxisAlignment,
  });
  final MainAxisAlignment? mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        SvgPicture.asset(AppImages.imagesStarVector),
        const SizedBox(width: 6.3),
        Text(
          '4.8',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(width: 9),
        Opacity(
          opacity: .5,
          child: Text(
            '(2390)',
            style: AppStyles.styleRegular14(context),
          ),
        ),
      ],
    );
  }
}
