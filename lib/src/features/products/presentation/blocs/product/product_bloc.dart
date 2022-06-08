import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yansol/src/core/usecases/use_case.dart';
import 'package:yansol/src/features/products/data/models/product.dart';
import 'package:yansol/src/features/products/domain/usecases/get_products.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({required this.getProducts}) : super(ProductInitialState()) {
    on<GetProductsEvent>(_onGetProductsEvent);
  }

  final GetProducts getProducts;

  FutureOr<void> _onGetProductsEvent(
      GetProductsEvent event, Emitter<ProductState> emit) async {
    try {
      final products = await getProducts(NoParams());
      if (products != null) {
        emit(ProductsLoadedState(products: products));
      } else {
        emit(ProductsErrorState());
      }
    } catch (e) {
      emit(ProductsErrorState());
    }
  }
}
