import 'package:go_router/go_router.dart';
import 'package:yansol/src/features/home/presentation/pages/home_page.dart';
import 'package:yansol/src/features/users/presentation/pages/user_page.dart';
import 'package:yansol/src/splash/splash.dart';

import '../../features/home/presentation/pages/pages.dart';
import '../../features/login/login.dart';

final router = GoRouter(
  routes: <GoRoute>[
    GoRoute(path: '/', builder: (context, state) => const SplashPage()),
    GoRoute(
      path: '/home',
      builder: (context, state) =>  HomePage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      name: 'user',
      path: '/user',
      builder: (context, state) => UserPage(),
    )
  ],
);
