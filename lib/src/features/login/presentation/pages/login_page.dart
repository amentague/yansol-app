import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/src/features/authentication/data/repositories/authentication_repository._impl.dart';
import 'package:yansol/src/features/login/domain/usecases/authenticate_user.dart';

import '../../../authentication/domain/repositories/authentication_repository.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: BlocProvider(
          create: (context) {
            return LoginBloc(
              authenticateUser: AuthenticateUser(
                authenticationRepository:
                    RepositoryProvider.of<AuthenticationRepositoryImpl>(context),
              ),
            );
          },
          child: const LoginForm(),
        ),
      ),
    );
  }
}
