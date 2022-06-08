import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/locator.dart';
import 'package:yansol/src/core/storage/odoo_kv_hive.dart';
import 'package:yansol/src/features/pos/presentation/blocs/blocs.dart';

import '../../../../app/routes/app_routes.dart';
import '../../../../core/utils/config.dart';
import '../../../authentication/presentation/authentication.dart';
import '../../../users/presentation/bloc/user_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalKey<NavigatorState>();
    return Scaffold(
      key: navigatorKey,
      appBar: AppBar(
        title: const Text('Loja'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              locator<AuthenticationBloc>()
                  .add(AuthenticationLogoutRequested());
            },
          )
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Builder(
            builder: (context) {
              var state =
                  context.select((AuthenticationBloc bloc) => bloc.state);
              if (state is AuthenticatedState) {
                final session = context.select(
                  (AuthenticationBloc bloc) =>
                      (bloc.state as AuthenticatedState).session,
                );
                return Text('Welcome: ${session.userName}');
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          TextButton(
              onPressed: () {
                BlocProvider.of<UserBloc>(context).add(
                  GetUsersEvent(),
                );
                Navigator.of(context).pushNamed<void>(Routes.userRoute);
              },
              child: const Text('Users')),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed<void>(Routes.companyRoute);
            },
            child: const Text('Company'),
          ),
          TextButton(
              onPressed: () {
                BlocProvider.of<PosBloc>(context).add(
                  GetPos(),
                );
                Navigator.of(context).pushNamed<void>(Routes.posRoute);
              },
              child: const Text('Pos')),
        ],
      ),
    );
  }
}
