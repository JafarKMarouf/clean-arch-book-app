part of '../../../index.dart';

class CustomeBookImage extends StatelessWidget {
  const CustomeBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.imagesTest1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
