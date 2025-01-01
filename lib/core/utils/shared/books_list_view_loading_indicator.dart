part of '../../index.dart';

class BooksListViewLoadingIndicator extends StatelessWidget {
  const BooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Row(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .17,
                child: AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Skeletonizer(
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              const BookItemDetailsLoadingIndicator(),
            ],
          ),
        );
      },
    );
  }
}
