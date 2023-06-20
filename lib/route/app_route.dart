import 'package:go_router/go_router.dart';
import 'package:mid_term_ui_design/views/home_screen.dart';
import 'package:mid_term_ui_design/views/login_screen.dart';
import 'package:mid_term_ui_design/views/profile_screen.dart';
import 'package:mid_term_ui_design/views/sign_up_screen.dart';
import 'package:mid_term_ui_design/views/splah_screen.dart';
import 'package:mid_term_ui_design/views/welcome_screen.dart';
import 'package:mid_term_ui_design/widget/buttom_navigation.dart';

final approute = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/welcome_screen',
      name: 'welcome_screen',
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: '/login_screen',
      name: 'login_screen',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/signup_screen',
      name: 'signup_screen',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/home_screen',
      name: 'home_screen',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/profile_screen',
      name: 'profile_screen',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/botton_navigation',
      name: 'botton_navigation',
      builder: (context, state) => const ButtomNavigation(),
    )
  ],
);
