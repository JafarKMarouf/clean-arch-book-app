part of '../../index.dart';

class AppPages {
  static const initial = Routes.splash;
  static const home = Routes.home;

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: initial,
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: home,
        builder: (context, state) {
          return const HomeView();
        },
      ),
    ],
  );
}
