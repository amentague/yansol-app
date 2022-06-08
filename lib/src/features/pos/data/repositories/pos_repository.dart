import 'package:yansol/src/api/odoo_environment.dart';
import 'package:yansol/src/api/odoo_repository.dart';
import 'package:yansol/src/features/pos/data/models/pos.dart';

class PosRepository extends OdooRepository<Pos> {
  PosRepository(OdooEnvironment env,
      {String modelName = 'pos.config', int remoteRecordsCount = 1})
      : super(env, modelName, remoteRecordsCount);

  @override
  Pos createRecordFromJson(Map<String, dynamic> json) {
    return Pos.fromJson(json);
  }
}
