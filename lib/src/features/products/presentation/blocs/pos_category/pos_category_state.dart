part of 'pos_category_bloc.dart';

abstract class PosCategoryState extends Equatable {
  const PosCategoryState();

  @override
  List<Object> get props => [];
}

class PosCategoryInitialState extends PosCategoryState {}

class PosCategoryLoadingState extends PosCategoryState {}

class PosCategoriesLoadedState extends PosCategoryState {
  const PosCategoriesLoadedState({required this.categories});
  final List<PosCategory> categories;

  @override
  List<Object> get props => [categories];
}

class PosCategoryErrorState extends PosCategoryState {}
