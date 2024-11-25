part of '../../../index.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                      child: const CustomeBookImage(),
                    ),
                    const SizedBox(height: 43),
                    const InfosBookDetails(),
                    const SizedBox(height: 37),
                    const BookActions(),
                    const Expanded(child: SizedBox(height: 49)),
                    Text(
                      'You can also like',
                      style: AppStyles.styleSemiBold14(context),
                    ),
                    const SizedBox(height: 16),
                    const SimilarBooksListView(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
