part of '../../../index.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomeButton(
              onPressed: () {},
              title: '19.99€',
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomeButton(
              onPressed: () {},
              title: 'Free preview',
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              backgroundColor: const Color(0xFFEF8262),
              textStyle: AppStyles.styleBold16(context).copyWith(
                color: Colors.white,
                fontFamily: kGilroy,
              ),
            ),
          )
        ],
      ),
    );
  }
}
