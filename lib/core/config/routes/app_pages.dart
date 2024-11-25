part of '../../index.dart';

class AppPages {
  static const initial = Routes.splash;
  static const home = Routes.home;
  static const bookDetails = Routes.bookDetails;

  static final routes = [
    GetPage(
      name: initial,
      page: () => const SplashView(),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: home,
      page: () => const HomeView(),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: bookDetails,
      page: () => const BookDetailsView(),
      curve: Curves.easeIn,
    ),
  ];
}
