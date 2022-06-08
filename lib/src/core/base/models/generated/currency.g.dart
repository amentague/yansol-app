// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      json['id'] as int,
      json['name'] as String,
      json['full_name'] as String?,
      json['symbol'] as String,
      (json['rate'] as num?)?.toDouble(),
      (json['inverse_rate'] as num?)?.toDouble(),
      json['rate_string'] as String?,
      json['rate_ids'] as List<dynamic>?,
      (json['rounding'] as num?)?.toDouble(),
      (json['decimal_places'] as num?)?.toDouble(),
      json['active'] as bool?,
      json['position'] as String?,
      DateTime.parse(json['date'] as String),
      json['currency_unit_label'] as String?,
      json['currency_subunit_label'] as String?,
      json['is_current_company_currency'] as bool?,
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'symbol': instance.symbol,
      'rate': instance.rate,
      'inverse_rate': instance.inverseRate,
      'rate_string': instance.rateString,
      'rate_ids': instance.rateIds,
      'rounding': instance.rounding,
      'decimal_places': instance.decimalPlaces,
      'active': instance.active,
      'position': instance.position,
      'date': instance.date.toIso8601String(),
      'currency_unit_label': instance.currencyUnitLabel,
      'currency_subunit_label': instance.currencySubunitLabel,
      'is_current_company_currency': instance.isCurrentCompanyCurrency,
    };
