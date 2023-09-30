import 'package:e_commerce_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:e_commerce_app/features/auth/presentation/views/login_view.dart';
import 'package:e_commerce_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:e_commerce_app/features/auth/presentation/views/verification_code_view.dart';
import 'package:e_commerce_app/features/splash/presentation/views/heading_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/views/create_new_password_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const headingView = '/heading_view';
  static const signUpView = '/sign_up_view';
  static const loginView = '/log_in_view';
  static const forgetPasswordView = '/forget_password_view';
  static const verificationCodeView = '/verification_code_view';
  static const createNewPasswordView = '/create_new_password_view';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: headingView,
        builder: (context, state) => const HeadingView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => const LogInView(),
      ),
      GoRoute(
        path: forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: verificationCodeView,
        builder: (context, state) => const VerificationCodeView(),
      ),
      GoRoute(
        path: createNewPasswordView,
        builder: (context, state) => const CreateNewPasswordView(),
      ),
    ],
  );
}
