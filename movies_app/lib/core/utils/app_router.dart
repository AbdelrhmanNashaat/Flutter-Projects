import 'package:go_router/go_router.dart';
import 'package:movies_app/features/auth/presentation/views/login_view.dart';
import 'package:movies_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:movies_app/features/home/presentaion/views/home_view.dart';
import 'package:movies_app/features/home/presentaion/views/search_view.dart';
import 'package:movies_app/features/home/presentaion/views/saved_ietm_view.dart';
import 'package:movies_app/features/movies/presentaion/views/cast_view.dart';
import 'package:movies_app/features/movies/presentaion/views/movie_view.dart';
import 'package:movies_app/features/movies/presentaion/views/reviews_view.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kLoginView = '/loginview';
  static const kSignUpView = '/signupview';
  static const kHomePage = '/homepage';
  static const kSavedItemPage = '/saveditempage';
  static const kSearchPage = '/searchpage';
  static const kMovieView = '/movieview';
  static const kReviewsView = '/reviewview';
  static const kCastView = '/castview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kHomePage,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSavedItemPage,
        builder: (context, state) => const SavedItemsView(),
      ),
      GoRoute(
        path: kSearchPage,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kMovieView,
        builder: (context, state) => const MovieView(),
      ),
      GoRoute(
        path: kReviewsView,
        builder: (context, state) => const ReviewsView(),
      ),
      GoRoute(
        path: kCastView,
        builder: (context, state) => const CastView(),
      ),
    ],
  );
}
