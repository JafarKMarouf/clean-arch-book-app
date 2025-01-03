part of '../../index.dart';

class CustomeBookImage extends StatelessWidget {
  const CustomeBookImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: image,
          fadeInCurve: Curves.easeIn,
          placeholder: (context, url) {
            return Skeletonizer(
              child: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              ),
            );
          },
        ),
      ),
    );
  }
}
