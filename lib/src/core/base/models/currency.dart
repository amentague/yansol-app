import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:yansol/src/api/odoo_record.dart';
part 'generated/currency.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Currency extends Equatable implements OdooRecord {
  const Currency(
    this.id,
    this.name,
    this.fullName,
    this.symbol,
    this.rate,
    this.inverseRate,
    this.rateString,
    this.rateIds,
    this.rounding,
    this.decimalPlaces,
    this.active,
    this.position,
    this.date,
    this.currencyUnitLabel,
    this.currencySubunitLabel,
    this.isCurrentCompanyCurrency,
  );

  @override
  final int id;

  /// Currency Code (ISO 4217)
  final String name;
  final String? fullName;

  /// Currency sign, to be used when printing amounts
  final String symbol;

  /// Computed. The rate of the currency to the currency of rate 1.
  final double? rate;

  /// Computed The currency of rate 1 to the rate of the currency.
  final double? inverseRate;

  /// computed
  final String? rateString;
  final List<dynamic>? rateIds;

  /// Amounts in this currency are rounded off to the nearest multiple of the rounding factor
  final double? rounding;

  /// Computed Decimal places taken into account for operations on amounts in this currency. It is determined by the rounding factor.
  final double? decimalPlaces;
  final bool? active;

  /// ('after', 'After Amount'), ('before', 'Before Amount'), default='after',
  /// "Determines where the currency symbol should be placed after or before the amount.
  final String? position;

  /// Computed
  final DateTime date;

  /// Currency Unit Name.
  final String? currencyUnitLabel;

  /// Currency Subunit Name
  final String? currencySubunitLabel;

  /// Computed
  final bool? isCurrentCompanyCurrency;


  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CurrencyToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {
      "id": id,
    };
  }

  Currency copyWith({
    int? id,
    String? name,
    String? fullName,
    String? symbol,
    double? rate,
    double? inverseRate,
    String? rateString,
    List<dynamic>? rateIds,
    double? rounding,
    double? decimalPlaces,
    bool? active,
    String? position,
    DateTime? date,
    String? currencyUnitLabel,
    String? currencySubunitLabel,
    bool? isCurrentCompanyCurrency,
  }) {
    return Currency(
      id ?? this.id,
      name ?? this.name,
      fullName ?? this.fullName,
      symbol ?? this.symbol,
      rate ?? this.rate,
      inverseRate ?? this.inverseRate,
      rateString ?? this.rateString,
      rateIds ?? this.rateIds,
      rounding ?? this.rounding,
      decimalPlaces ?? this.decimalPlaces,
      active ?? this.active,
      position ?? this.position,
      date ?? this.date,
      currencyUnitLabel ?? this.currencyUnitLabel,
      currencySubunitLabel ?? this.currencySubunitLabel,
      isCurrentCompanyCurrency ?? this.isCurrentCompanyCurrency,
    );
  }

   @override
  List<Object?> get props => [id, name];
}
