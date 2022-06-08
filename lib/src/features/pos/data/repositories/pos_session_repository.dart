import 'package:yansol/src/api/odoo_environment.dart';
import 'package:yansol/src/api/odoo_repository.dart';
import 'package:yansol/src/features/pos/data/models/pos_session.dart';

class PosSessionRepository extends OdooRepository<PosSession> {
  PosSessionRepository(OdooEnvironment env,
      {String modelName = 'pos.session', int remoteRecordsCount = 1})
      : super(env, modelName, remoteRecordsCount);

  
  @override
  PosSession createRecordFromJson(Map<String, dynamic> json) {
    return PosSession.fromJson(json);
  }
}
