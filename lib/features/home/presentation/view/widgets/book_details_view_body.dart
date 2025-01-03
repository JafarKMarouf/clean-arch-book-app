part of '../../../index.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookItem});
  final BookEntity bookItem;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomeBookDetailsAppBar(),
                    const SizedBox(height: 33),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * .2,
                      ),
                      child: CustomeBookImage(image: bookItem.image!),
                    ),
                    const SizedBox(height: 43),
                    InfosBookDetails(bookItem: bookItem),
                    const SizedBox(height: 37),
                    BookActions(
                      previewLink: bookItem.previewLink,
                      price: bookItem.price,
                    ),
                    const Expanded(child: SizedBox(height: 40)),
                    Text(
                      'You can also like',
                      style: AppStyles.styleSemiBold14(context),
                    ),
                    const SizedBox(height: 16),
                    const SimilarBooksListViewBlocConsumer(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
