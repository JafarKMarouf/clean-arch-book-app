part of '../../index.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return SearchBookCubit(
          FetchSearchBooksUseCase(
            searchRepo: getIt.get<SearchRepoImpl>(),
          ),
        );
      },
      child: const Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}
