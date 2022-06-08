import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/locator.dart';
import 'package:yansol/src/app/app_bloc_observer.dart';
import 'package:yansol/src/core/storage/odoo_kv_hive.dart';
import 'package:yansol/src/app/pages/app.dart';
import 'package:yansol/src/features/authentication/data/repositories/authentication_repository._impl.dart';

import 'src/core/utils/config.dart';
import 'src/api/odoo_client.dart';
import 'src/api/odoo_environment.dart';
import 'src/api/odoo_session.dart';
import 'src/core/utils/network_connectivity.dart';

Future<void> bootstrap() async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await initLocator();
  OdooKvHive cache = locator<OdooKvHive>();
  // await cache.init();

  // OdooKvHive cache = OdooKvHive();
  //await cache.init();
  // OdooSession? session = await cache.get(cacheSessionKey, defaultValue: null);
  // OdooClient odooClient = locator<OdooClient>();
  // final odooClient = OdooClient(session);
  final sessionChangedHandler = storeSession(cache);

  // odooClient.sessionStream.listen(sessionChangedHandler);
  locator<AuthenticationRepositoryImpl>()
      .sessionStream
      .listen(sessionChangedHandler);
  // odooClient.sessionStream.listen(sessionChangedHandler);
  // final netConn = NetworkConnectivity();
  // final env =
  //     OdooEnvironment(orpc: odooClient, cache: cache, netConnectivity: netConn);
  // env.add(CompanyRepositoryImpl(env));
  // env.add(UserRepository(env));
  // env.add(PosRepository(env));

  // final userRepo = env.of<UserRepository>();
  // final companyRepository = env.of<CompanyRepositoryImpl>();
  // final posRepository = env.of<PosRepository>();

  // final GetUsers getUsers = GetUsers(userRepository: userRepo);
  // final GetCompanyById getCompanyById =
  //     GetCompanyById(companyRepository: companyRepository);
  // final GetPosConfig getPosConfig = GetPosConfig(posRepository: posRepository);
  runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(() async => runApp(const App()),
          blocObserver: AppBlocObserver());
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
  // await SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}
