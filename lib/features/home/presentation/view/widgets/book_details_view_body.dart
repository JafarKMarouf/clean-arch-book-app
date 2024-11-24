part of '../../../index.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomeBookDetailsAppBar(),
            SizedBox(height: 33),
          ],
        ),
      ),
    );
  }
}
