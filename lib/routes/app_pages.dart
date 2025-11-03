import 'package:get/get.dart';
import '../pages/splash_screen.dart';
import '../pages/home_page.dart';
import '../pages/articles_page.dart';
import '../pages/article_detail_page.dart';
import '../pages/events_page.dart';
import '../pages/contact_us_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.home, page: () => const HomePage()),
    GetPage(name: AppRoutes.articles, page: () => const ArticlesPage()),
    GetPage(
      name: AppRoutes.articleDetail,
      page: () => const ArticleDetailPage(),
    ),
    GetPage(name: AppRoutes.events, page: () => const EventsPage()),
    GetPage(name: AppRoutes.contactUs, page: () => const ContactUsPage()),
  ];
}
