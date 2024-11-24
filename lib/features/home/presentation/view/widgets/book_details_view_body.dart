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
          ],
        ),
      ),
    );
  }
}
