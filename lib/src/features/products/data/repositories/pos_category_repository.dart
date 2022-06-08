import 'package:yansol/src/api/odoo_environment.dart';
import 'package:yansol/src/api/odoo_repository.dart';
import 'package:yansol/src/features/products/data/models/pos_category.dart';

class PosCategoryRepository extends OdooRepository<PosCategory> {
  PosCategoryRepository(OdooEnvironment env,
      {String modelName = 'pos.category', int remoteRecordsCount = 1})
      : super(env, modelName, remoteRecordsCount);

  @override
  PosCategory createRecordFromJson(Map<String, dynamic> json) {
    return PosCategory.fromJson(json);
  }
}
