import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:get/get.dart';

abstract class AppRouter {
  static String splashView = "/";
  static String homeView = "/homeView";
  static String bookDetailsView = "/formationView";

  static List<GetPage<dynamic>>? getViews() {
    return [
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
    ];
  }
}
