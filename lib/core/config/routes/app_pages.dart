part of '../../index.dart';

class AppPages {
  static const initial = Routes.splash;
  static const home = Routes.home;
  static const bookDetails = Routes.bookDetails;
  static const search = Routes.search;

  static final routes = [
    GetPage(
      name: initial,
      page: () => const SplashView(),
      curve: Curves.easeInCirc,
    ),
    GetPage(
      name: home,
      page: () => const HomeView(),
      curve: kCurveAnimation,
    ),
    GetPage(
      name: bookDetails,
      page: () => const BookDetailsView(),
      curve: kCurveAnimation,
    ),
    GetPage(
      name: search,
      page: () => const SearchView(),
      curve: Curves.easeInCirc,
    ),
  ];
}
