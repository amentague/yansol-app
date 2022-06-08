import 'package:yansol/src/api/odoo_environment.dart';

import '../../data/models/company.dart';

abstract class CompanyRepository {
  const CompanyRepository({required this.env});
  final OdooEnvironment env;
  Future<Company?> getCompanyById(int id);
}
