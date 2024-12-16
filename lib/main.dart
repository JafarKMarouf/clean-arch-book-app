import 'package:clean_arch_bookly_app/core/index.dart';
import 'package:clean_arch_bookly_app/features/home/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);

  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();

  runApp(const BooklyApp());

  // runApp(
  //   DevicePreview(
  //     enabled: false,
  //     builder: (context) => const BooklyApp(),
  //   ),
  // );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FetchFeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                homeRepo: getIt.get<HomeRepoImp>(),
              ),
            )..fetchFeaturedBook();
          },
        ),
        BlocProvider(
          create: (context) {
            return FetchNewestBooksCubit(
              FetchNewestBooksUseCase(
                homeRepo: getIt.get<HomeRepoImp>(),
              ),
            )..fetchNewestBooks();
          },
        )
      ],
      child: GetMaterialApp(
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: AppThemes.darkTheme,
        initialRoute: AppPages.initial,
        getPages: AppPages.routes,
      ),
    );
  }
}
