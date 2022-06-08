import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:yansol/src/api/odoo_record.dart';

part 'generated/lang.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Lang extends Equatable implements OdooRecord {
  const Lang(
    this.id,
    this.name,
    this.code,
    this.isoCode,
    this.urlCode,
    this.active,
    this.direction,
    this.dateFormat,
    this.timeFormat,
    this.weekStart,
    this.grouping,
    this.decimalPoint,
    this.thousandsSep,
    this.flagImage,
    this.flagImageUrl,
  );

  @override
  final int id;
  final String name;

  /// Locale Code
  final String code;
  final String? isoCode;

  /// The Lang Code displayed in the URL
  final String urlCode;
  final bool? active;

  /// ('ltr', 'Left-to-Right'), ('rtl', 'Right-to-Left'). default='ltr'
  final String? direction;
  final String? dateFormat;
  final String? timeFormat;

  /// ('1', 'Monday'),('2', 'Tuesday'),('3', 'Wednesday'), ('4', 'Thursday'),('5', 'Friday'), ('6', 'Saturday'), ('7', 'Sunday')
  final String? weekStart;

  /// The Separator Format should be like [,n] where 0 < n :starting from Unit digit.
  /// -1 will end the separation. e.g. [3,2,-1] will represent 106500 to be 1,06,500;
  /// [1,2,-1] will represent it to be 106,50,0;[3] will represent it as 106,500.
  /// Provided ',' as the thousand separator in each case. default='[]'
  final String? grouping;

  /// Decimal Separator default '.'
  final String? decimalPoint;

  /// Thousands Separator. default=','
  final String? thousandsSep;
  final String? flagImage;

  /// Computed
  final String? flagImageUrl;

  @override
  List<Object?> get props => [id];

  factory Lang.fromJson(Map<String, dynamic> json) =>
      _$LangFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LangToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {
      "id": id,
    };
  }
}
