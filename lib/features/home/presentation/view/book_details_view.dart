part of '../../index.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final BookEntity bookItem = args['book_item'];

    return Scaffold(
      body: BookDetailsViewBody(bookItem: bookItem),
    );
  }
}
