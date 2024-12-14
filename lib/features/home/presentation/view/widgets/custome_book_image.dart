part of '../../../index.dart';

class CustomeBookImage extends StatelessWidget {
  const CustomeBookImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: image,
        ),
      ),
      // child: Container(
      //   decoration: BoxDecoration(
      //     image: const DecorationImage(
      //       fit: BoxFit.fill,
      //       image: AssetImage(AppImages.imagesTest1),
      //     ),
      // borderRadius: BorderRadius.circular(12),
      //   ),
      // ),
    );
  }
}
