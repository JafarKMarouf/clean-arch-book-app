part of '../../../index.dart';

class FeatureBookListViewItem extends StatelessWidget {
  const FeatureBookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .25,
      child: AspectRatio(
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
      ),
    );
  }
}