import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:yansol/src/api/odoo_record.dart';

part 'product_category.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductCategory extends Equatable implements OdooRecord {
  const ProductCategory({
    required this.id,
    required this.name,
    this.completeName,
  });

  @override
  final int id;
  final String name;
  final String? completeName;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {
      "id": id,
    };
  }

  @override
  List<Object?> get props => [id, name];
}
