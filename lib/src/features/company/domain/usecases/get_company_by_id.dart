import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/company/data/models/company.dart';
import 'package:yansol/src/features/company/domain/repositories/company_repository.dart';

class GetCompanyById extends UseCase<Company, int> {
  GetCompanyById({required this.companyRepository});
  final CompanyRepository companyRepository;
  @override
  Future<Company?> call(int params) {
    return companyRepository.getCompanyById(params);
  }
}
