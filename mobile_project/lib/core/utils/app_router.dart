import 'package:go_router/go_router.dart';
import 'package:mobile_project/Features/drawer_screens/presentation/views/listening_azkar_morning_view.dart';
import 'package:mobile_project/Features/drawer_screens/presentation/views/tasbih_view.dart';
import 'package:mobile_project/Features/splash/presentation/views/splash_view.dart';

import '../../Features/drawer_screens/presentation/views/azkar_night_view.dart';
import '../../Features/drawer_screens/presentation/views/listening_azkar_night_view.dart';
import '../../Features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kAzkarNightView = '/azkarNightView';
  static const kListeningAzkarNightView = '/listeningAzkarNightView';
  static const kListeningAzkarMorningView = '/listeningAzkarMorningView';
  static const kTasbehView = '/tasbehView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kAzkarNightView,
        builder: (context, state) => const AzkarNightView(),
      ),
      GoRoute(
        path: kListeningAzkarNightView,
        builder: (context, state) => const ListeningAzkarNightView(),
      ),
      GoRoute(
        path: kListeningAzkarMorningView,
        builder: (context, state) => const ListeningAzkarMorningView(),
      ),
      GoRoute(
        path: kTasbehView,
        builder: (context, state) => const TasbehView(),
      ),
    ],
  );
}
