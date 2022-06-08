import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'odoo_kv_hive.dart';

class AppHiveDb {
  AppHiveDb._();
  static AppHiveDb getInstance = AppHiveDb._();

  Future init() async {
    final _directory = await path_provider.getApplicationDocumentsDirectory();
    Hive
      ..init(_directory.path)
      ..registerAdapter(OdooSessionAdapter())
      ..registerAdapter(OdooRpcCallAdapter())
      ..registerAdapter(OdooIdAdapter())
      ..registerAdapter(UserAdapter());
  }
}
