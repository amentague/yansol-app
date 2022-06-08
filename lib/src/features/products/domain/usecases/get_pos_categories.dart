import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/products/data/models/pos_category.dart';
import 'package:yansol/src/features/products/data/repositories/pos_category_repository.dart';

class GetPosCategories extends UseCase<List<PosCategory>, NoParams> {
  GetPosCategories({required this.posCategoryRepository});
  final PosCategoryRepository posCategoryRepository;
  @override
  Future<List<PosCategory>?> call(NoParams params) async {
    return await posCategoryRepository.records;
  }
}
