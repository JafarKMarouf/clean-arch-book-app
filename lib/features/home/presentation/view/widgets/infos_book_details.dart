part of '../../../index.dart';

class InfosBookDetails extends StatelessWidget {
  const InfosBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'The Jungle Book',
          style: AppStyles.styleRegular30(context),
        ),
        const SizedBox(height: 5),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: AppStyles.styleMedium18(context),
          ),
        ),
        const SizedBox(height: 14),
        const RatingBooks(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
