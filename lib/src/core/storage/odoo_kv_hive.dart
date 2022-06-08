import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:yansol/src/features/pos/data/models/models.dart';

import '../../api/odoo_id.dart';
import '../../api/odoo_rpc_call.dart';
import '../../api/odoo_session.dart';
import '../../features/company/data/models/company.dart';
import '../../features/users/data/models/user.dart';
import '../utils/config.dart';

typedef SessionChangedCallback = void Function(OdooSession sessionId);

/// Persistent key-value storage for offline work and performance.

class OdooKvHive {
  late Box box;

  OdooKvHive();

  Future<void> init() async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive.registerAdapter(OdooSessionAdapter());
    Hive.registerAdapter(OdooRpcCallAdapter());
    Hive.registerAdapter(OdooIdAdapter());
    Hive.registerAdapter(UserAdapter());
    Hive.registerAdapter(CompanyAdapter());
    Hive.registerAdapter(PosAdapter());
    Hive.init(directory.path);
    box = await Hive.openBox(hiveBoxName);
  }

  /// Initializes the storage.

  /// All the keys in the storage.
  ///
  /// The keys are sorted alphabetically in ascending order.
  Iterable<dynamic> get keys => box.keys;

  /// Returns the value associated with the given [key]. If the key does not
  /// exist, `null` is returned.
  ///
  /// If [defaultValue] is specified, it is returned in case the key does not
  /// exist.
  dynamic get(dynamic key, {dynamic defaultValue}) {
    return box.get(key, defaultValue: defaultValue);
  }

  /// Saves the [key] - [value] pair.
  Future<void> put(dynamic key, dynamic value) {
    return box.put(key, value);
  }

  /// Deletes the given [key] from the storage.
  ///
  /// If it does not exist, nothing happens.
  Future<void> delete(dynamic key) {
    return box.delete(key);
  }

  /// Closes the storage.
  Future<void> close() {
    return box.close();
  }
}

SessionChangedCallback storeSession(OdooKvHive cache) {
  void sessionChanged(OdooSession sessionId) {
    if (sessionId.id == '') {
      cache.delete(cacheSessionKey);
    } else {
      cache.put(cacheSessionKey, sessionId);
    }
  }

  return sessionChanged;
}

/// Adapter to store and read OdooSession from persistent storage
class OdooSessionAdapter extends TypeAdapter<OdooSession> {
  @override
  final typeId = 0;

  @override
  OdooSession read(BinaryReader reader) {
    return OdooSession.fromJson(Map<String, dynamic>.from(reader.read()));
  }

  @override
  void write(BinaryWriter writer, OdooSession obj) {
    writer.write(obj.toJson());
  }
}

/// Adapter to store and read OdooRpcCall to/from Hive
class OdooRpcCallAdapter extends TypeAdapter<OdooRpcCall> {
  @override
  final typeId = 2;

  @override
  OdooRpcCall read(BinaryReader reader) {
    return OdooRpcCall.fromJson(Map<String, dynamic>.from(reader.read()));
  }

  @override
  void write(BinaryWriter writer, OdooRpcCall obj) {
    writer.write(obj.toJson());
  }
}

/// Adapter to store and read OdooId to/from Hive
class OdooIdAdapter extends TypeAdapter<OdooId> {
  @override
  final typeId = 3;

  @override
  OdooId read(BinaryReader reader) {
    return OdooId.fromJson(Map<String, dynamic>.from(reader.read()));
  }

  @override
  void write(BinaryWriter writer, OdooId obj) {
    writer.write(obj.toJson());
  }
}

/// Adapter to store and read User to/from Hive
class UserAdapter extends TypeAdapter<User> {
  @override
  final typeId = 4;

  @override
  User read(BinaryReader reader) {
    return User.fromJson(Map<String, dynamic>.from(reader.read()));
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer.write(obj.toJson());
  }
}

class CompanyAdapter extends TypeAdapter<Company> {
  @override
  Company read(BinaryReader reader) =>
      Company.fromJson(Map<String, dynamic>.from(reader.read()));

  @override
  int get typeId => 5;

  @override
  void write(BinaryWriter writer, Company obj) {
    writer.write(obj.toJson());
  }
}

class PosAdapter extends TypeAdapter<Pos> {
  @override
  Pos read(BinaryReader reader) =>
      Pos.fromJson(Map<String, dynamic>.from(reader.read()));

  @override
  int get typeId => 6;

  @override
  void write(BinaryWriter writer, Pos obj) {
    writer.write(obj.toJson());
  }
}
