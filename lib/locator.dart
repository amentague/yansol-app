import 'package:get_it/get_it.dart';
import 'package:yansol/src/api/odoo_session.dart';
import 'package:yansol/src/core/storage/odoo_kv_hive.dart';
import 'package:yansol/src/api/odoo_client.dart';
import 'package:yansol/src/api/odoo_environment.dart';
import 'package:yansol/src/features/authentication/authentication.dart';
import 'package:yansol/src/features/authentication/data/repositories/authentication_repository._impl.dart';
import 'package:yansol/src/features/company/data/repositories/conpany_repository_impl.dart';
import 'package:yansol/src/features/company/domain/repositories/company_repository.dart';
import 'package:yansol/src/features/company/domain/usecases/get_company_by_id.dart';
import 'package:yansol/src/features/company/presentation/bloc/company_bloc.dart';
import 'package:yansol/src/features/login/domain/usecases/authenticate_user.dart';
import 'package:yansol/src/features/login/login.dart';
import 'package:yansol/src/features/pos/data/repositories/repositories.dart';
import 'package:yansol/src/features/pos/domain/usecase/usecases.dart';
import 'package:yansol/src/features/pos/presentation/blocs/blocs.dart';
import 'package:yansol/src/features/products/data/repositories/repositories.dart';
import 'package:yansol/src/features/products/domain/usecases/usecase.dart';
import 'package:yansol/src/features/products/presentation/blocs/bloc.dart';
import 'package:yansol/src/features/users/data/repositories/user_repository.dart';
import 'package:yansol/src/features/users/domain/usecases/get_users.dart';
import 'package:yansol/src/features/users/presentation/bloc/user_bloc.dart';

import 'src/core/utils/config.dart';
import 'src/core/utils/network_connectivity.dart';

final locator = GetIt.instance;

Future<void> initLocator() async {
  //! Core
  //? Connectivity
  locator.registerFactory<NetworkConnectivity>(
    () => NetworkConnectivity(),
  );

  //! Cache
  //? KvHive
  locator.registerSingleton<OdooKvHive>(OdooKvHive());
  await locator<OdooKvHive>().init();
  //! API
  //* OdooSession
  locator.registerSingleton<OdooSession>(
    locator<OdooKvHive>().get(cacheSessionKey, defaultValue: null) ??
        const OdooSession(
            id: '',
            userId: 0,
            partnerId: 0,
            companyId: 0,
            userLogin: '',
            userName: '',
            userLang: '',
            userTz: '',
            isSystem: false,
            dbName: '',
            serverVersion: 0),
  );
  //? odooClient
  locator.registerSingleton<OdooClient>(
    OdooClient(
      locator<OdooSession>(),
    ),
  );

  //? odoo Environment
  locator.registerSingleton<OdooEnvironment>(
    OdooEnvironment(
      orpc: locator<OdooClient>(),
      cache: locator<OdooKvHive>(),
      netConnectivity: locator<NetworkConnectivity>(),
    ),
  );

  //! Auth
  //? Repository
  locator.registerSingleton<AuthenticationRepositoryImpl>(
    AuthenticationRepositoryImpl(
      locator<OdooEnvironment>(),
    ),
  );
  //? Bloc
  locator.registerFactory(
    () => AuthenticationBloc(
      authenticationRepository: locator<AuthenticationRepositoryImpl>(),
    ),
  );

  //! Login
  //* Use cases
  locator.registerFactory<AuthenticateUser>(
    () => AuthenticateUser(
      authenticationRepository: locator<AuthenticationRepositoryImpl>(),
    ),
  );
  //? Bloc
  locator.registerFactory<LoginBloc>(
    () => LoginBloc(
      authenticateUser: locator<AuthenticateUser>(),
    ),
  );

  //! users
  //? Repositories
  locator.registerFactory<UserRepository>(
    () => UserRepository(
      locator<OdooEnvironment>(),
    ),
  );
  //? Use case
  locator.registerFactory<GetUsers>(
    () => GetUsers(
      userRepository: locator<UserRepository>(),
    ),
  );
  //* Bloc
  locator.registerFactory<UserBloc>(
    () => UserBloc(
      getUsers: locator<GetUsers>(),
    ),
  );

  //! Company
  //? Repository
  locator.registerFactory<CompanyRepository>(
    () => CompanyRepositoryImpl(
      locator<OdooEnvironment>(),
    ),
  );
  //? Usecase
  locator.registerFactory<GetCompanyById>(
    () => GetCompanyById(
      companyRepository: locator<CompanyRepository>(),
    ),
  );
  //* Bloc
  locator.registerFactory<CompanyBloc>(
    () => CompanyBloc(
      getCompanyById: locator<GetCompanyById>(),
    ),
  );

  //! POS
  //? Repository
  locator.registerSingleton<PosRepository>(
    PosRepository(
      locator<OdooEnvironment>(),
    ),
  );
  //? Use case
  locator.registerFactory<GetPosConfig>(
    () => GetPosConfig(
      posRepository: locator<PosRepository>(),
    ),
  );
  //* Bloc
  locator.registerFactory<PosBloc>(
    () => PosBloc(
      getPosConfig: locator<GetPosConfig>(),
    ),
  );

  //! Product
  //? repository
  locator.registerSingleton<ProductRepository>(
    ProductRepository(
      locator<OdooEnvironment>(),
    ),
  );
  locator.registerLazySingleton<PosCategoryRepository>(
    () => PosCategoryRepository(
      locator<OdooEnvironment>(),
    ),
  );
  //? Use cases
  locator.registerFactory<GetProducts>(
    () => GetProducts(
      productRepository: locator<ProductRepository>(),
    ),
  );
  locator.registerFactory<GetPosCategories>(
    () => GetPosCategories(
      posCategoryRepository: locator<PosCategoryRepository>(),
    ),
  );

  //* Bloc
  locator.registerFactory<ProductBloc>(
    () => ProductBloc(
      getProducts: locator<GetProducts>(),
    ),
  );
  locator.registerFactory<PosCategoryBloc>(
    () => PosCategoryBloc(
      getPosCategories: locator<GetPosCategories>(),
    ),
  );
}
