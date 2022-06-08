import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:yansol/src/api/odoo_record.dart';
 
 part 'pos_category.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PosCategory extends Equatable implements OdooRecord {
  const PosCategory({
    required this.id,
    required this.name,
    this.sequence,
  });

  @override
  final int id;
  final String name;
  final int? sequence;

  factory PosCategory.fromJson(Map<String, dynamic> json) =>
      _$PosCategoryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PosCategoryToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {};
  }

  @override
  List<Object?> get props => [id, name];

  PosCategory copyWith({
    int? id,
    String? name,
    int? sequence,
  }) {
    return PosCategory(
      id: id ?? this.id,
      name: name ?? this.name,
      sequence: sequence ?? this.sequence,
    );
  }
}
