import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/products/data/models/product.dart';
import 'package:yansol/src/features/products/data/repositories/product_repository.dart';

class GetProducts extends UseCase<List<Product>, NoParams> {
  GetProducts({required this.productRepository});
  final ProductRepository productRepository;
  
  @override
  Future<List<Product>?> call(NoParams params) async{
   return await productRepository.records;
  }
 
}
