part of '../../../index.dart';

class CustomeHomeAppBar extends StatelessWidget {
  const CustomeHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Hero(
          tag: 'logo',
          child: SvgPicture.asset(AppImages.imagesLogo, height: 16),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppImages.imagesSearch),
        ),
      ],
    );
  }
}
