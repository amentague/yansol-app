part of 'pos_category_bloc.dart';

abstract class PosCategoryEvent extends Equatable {
  const PosCategoryEvent();

  @override
  List<Object> get props => [];
}

class GetPosCategoriesEvent extends PosCategoryEvent {}
