import 'package:flutter/material.dart';
import 'package:yansol/src/app/routes/app_routes.dart';
import 'package:yansol/src/features/company/presentation/pages/company_page.dart';
import 'package:yansol/src/features/pos/presentation/pages/pos_page.dart';
import 'package:yansol/src/features/users/presentation/pages/user_page.dart';

import '../../features/home/home.dart';
import '../../features/login/login.dart';
import '../../splash/pages/splash_page.dart';

MaterialPageRoute onGenerateRoutes(RouteSettings routeSettings) {
  return MaterialPageRoute(
      settings: routeSettings,
      builder: (_) {
        // final arguments = routeSettings.arguments;
        switch (routeSettings.name) {
          case Routes.loginRoute:
            return const LoginPage();
          case Routes.homeRoute:
            return const HomePage();
          case Routes.userRoute:
            return const UserPage();
          case Routes.companyRoute:
            return const CompanyPage();
          case Routes.posRoute:
            return const PosPage();
          default:
            return const SplashPage();
        }
      });
}
