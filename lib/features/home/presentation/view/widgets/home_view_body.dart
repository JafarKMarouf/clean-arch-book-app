part of '../../../index.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomeHomeAppBar(),
                  const SizedBox(height: 44),
                  const FeaturedBooksListViewBlocConsumer(),
                  const SizedBox(height: 51),
                  Text(
                    'Best Seller',
                    style: AppStyles.styleSemiBold18(context),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: BestSellerListView(),
            ),
          ],
        ),
      ),
    );
  }
}
