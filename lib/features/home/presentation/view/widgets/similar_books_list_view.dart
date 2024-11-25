part of '../../../index.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .15,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 15,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: CustomeBookImage(),
          );
        },
      ),
    );
  }
}
