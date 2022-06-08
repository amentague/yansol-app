// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../decimal_precision.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DecimalPrecision _$DecimalPrecisionFromJson(Map<String, dynamic> json) =>
    DecimalPrecision(
      id: json['id'] as int,
      name: json['name'] as String,
      digits: json['digits'] as int?,
    );

Map<String, dynamic> _$DecimalPrecisionToJson(DecimalPrecision instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'digits': instance.digits,
    };
