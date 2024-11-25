part of '../../../index.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CustomeBookDetailsAppBar(),
            const SizedBox(height: 33),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .2),
              child: const CustomeBookImage(),
            ),
            const SizedBox(height: 43),
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
            const RatingBooks(),
            const SizedBox(height: 37),
            Row(
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
          ],
        ),
      ),
    );
  }
}
