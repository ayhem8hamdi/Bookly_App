import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:get/get.dart';

abstract class AppRouter {
  static String splashView = "/";
  static String homeView = "/homeView";
  static String bookDetailsView = "/homeView/formationView";
  static String searchView = "/homeView/searchView";

  static final List<GetPage<dynamic>> getViews = [
    GetPage(
      name: splashView,
      page: () => const SplashView(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: homeView,
      page: () => const HomeView(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: bookDetailsView,
      page: () => const BookDetailsView(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: searchView,
      page: () => const SearchView(),
      transition: Transition.zoom,
    ),
  ];
}
