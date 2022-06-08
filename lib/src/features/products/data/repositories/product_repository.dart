import 'package:yansol/src/api/odoo_environment.dart';
import 'package:yansol/src/features/products/data/models/product.dart';

import '../../../../api/odoo_repository.dart';

class ProductRepository extends OdooRepository<Product> {
  ProductRepository(OdooEnvironment env,
      {String modelName = 'product.product', int remoteRecordsCount = 1})
      : super(env, modelName, remoteRecordsCount);

   @override
  Product createRecordFromJson(Map<String, dynamic> json) {
    return Product.fromJson(json);
  }
}
