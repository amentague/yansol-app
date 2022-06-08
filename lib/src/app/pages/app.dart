import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/locator.dart';
import 'package:yansol/src/api/odoo_environment.dart';
import 'package:yansol/src/features/company/domain/usecases/get_company_by_id.dart';
import 'package:yansol/src/features/company/presentation/bloc/company_bloc.dart';
import 'package:yansol/src/features/pos/domain/usecase/usecases.dart';
import 'package:yansol/src/features/pos/presentation/blocs/blocs.dart';

import '../../core/theme/theme.dart';
import '../../features/authentication/authentication.dart';
import '../../features/authentication/data/repositories/authentication_repository._impl.dart';
import '../../features/authentication/domain/repositories/authentication_repository.dart';
import '../../features/users/data/repositories/user_repository.dart';
import '../../features/users/domain/usecases/get_users.dart';
import '../../features/users/presentation/bloc/user_bloc.dart';
import '../routes/app_routes.dart';
import '../routes/routes.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
   
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: locator<AuthenticationRepositoryImpl>(),
      child: RepositoryProvider.value(
        value: locator<UserRepository>(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) => locator<AuthenticationBloc>()
                ..add(AuthenticationStatusChanged(
                    locator<OdooEnvironment>().orpc.sessionId)),
            ),
            BlocProvider(
              create: (_) => locator<UserBloc>(),
            ),
            BlocProvider(
              create: (_) => locator<CompanyBloc>(),
            ),
            BlocProvider(
              create: (_) => locator<PosBloc>(
           
              ),
            ),
          ],
          child: const AppPage(),
        ),
      ),
    );
  }
}

class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (_, state) {
            if (state is AuthenticatedState) {
              _navigator.pushNamedAndRemoveUntil<void>(
                Routes.homeRoute,
                (route) => false,
              );
            } else {
              _navigator.pushNamedAndRemoveUntil<void>(
                Routes.loginRoute,
                (route) => false,
              );
            }
          },
          child: child,
        );
      },
      onGenerateRoute: onGenerateRoutes,
    );
  }
}

// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       routeInformationParser: router.routeInformationParser,
//       routerDelegate: router.routerDelegate,
//       title: 'YanSol',
//       supportedLocales: supportedLocales,
      
//     );
//   }
// }
