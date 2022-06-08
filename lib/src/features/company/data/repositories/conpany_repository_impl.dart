import 'package:yansol/src/api/odoo_environment.dart';
import 'package:yansol/src/api/odoo_repository.dart';
import 'package:yansol/src/features/company/data/models/company.dart';
import 'package:yansol/src/features/company/domain/repositories/company_repository.dart';

class CompanyRepositoryImpl extends OdooRepository<Company>
    implements CompanyRepository {
  CompanyRepositoryImpl(OdooEnvironment env,
      {String modelName = 'res.company', int remoteRecordsCount = 1})
      : super(env, modelName, remoteRecordsCount);

  @override
  Future<Company> getCompanyById(int id) async {
    domain = [
      ["id", "=", "1"]
    ];
    final comp = await records;
    return comp[0];
  }

  @override
  Company createRecordFromJson(Map<String, dynamic> json) {
    return Company.fromJson(json);
  }
}
