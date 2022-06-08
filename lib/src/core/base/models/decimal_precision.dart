import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yansol/src/api/odoo_record.dart';
part 'generated/decimal_precision.g.dart';
@JsonSerializable(fieldRename: FieldRename.snake)
class DecimalPrecision extends Equatable implements OdooRecord {
  const DecimalPrecision({
    required this.id,
    required this.name,
    this.digits,
  });

  @override
  final int id;
  final String name;
  final int? digits;

  

 factory DecimalPrecision.fromJson(Map<String, dynamic> json) => _$DecimalPrecisionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DecimalPrecisionToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {
      "id": id,
    };
  }

  @override
  List<Object?> get props => [id, name];
}
