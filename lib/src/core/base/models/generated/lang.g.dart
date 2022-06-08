// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../lang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lang _$LangFromJson(Map<String, dynamic> json) => Lang(
      json['id'] as int,
      json['name'] as String,
      json['code'] as String,
      json['iso_code'] as String?,
      json['url_code'] as String,
      json['active'] as bool?,
      json['direction'] as String?,
      json['date_format'] as String?,
      json['time_format'] as String?,
      json['week_start'] as String?,
      json['grouping'] as String?,
      json['decimal_point'] as String?,
      json['thousands_sep'] as String?,
      json['flag_image'] as String?,
      json['flag_image_url'] as String?,
    );

Map<String, dynamic> _$LangToJson(Lang instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'iso_code': instance.isoCode,
      'url_code': instance.urlCode,
      'active': instance.active,
      'direction': instance.direction,
      'date_format': instance.dateFormat,
      'time_format': instance.timeFormat,
      'week_start': instance.weekStart,
      'grouping': instance.grouping,
      'decimal_point': instance.decimalPoint,
      'thousands_sep': instance.thousandsSep,
      'flag_image': instance.flagImage,
      'flag_image_url': instance.flagImageUrl,
    };
