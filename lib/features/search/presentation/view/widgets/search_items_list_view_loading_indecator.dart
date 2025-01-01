part of '../../../index.dart';

class SearchItemsListViewLoadingIndicator extends StatelessWidget {
  const SearchItemsListViewLoadingIndicator({super.key});

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
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AppImages.imagesTest1),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * .4,
                      child: Text(
                        'Programming and Problem Solving with Java',
                        style: AppStyles.styleRegular16(context),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Opacity(
                      opacity: .7,
                      child: Text(
                        'Nell B. Dale',
                        style: AppStyles.styleMedium14(context),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: AppStyles.styleBold18(context),
                        ),
                        const Spacer(),
                        // const RatingBooksLoadingIndicator(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
