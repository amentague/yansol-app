// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosCategory _$PosCategoryFromJson(Map<String, dynamic> json) => PosCategory(
      id: json['id'] as int,
      name: json['name'] as String,
      sequence: json['sequence'] as int?,
    );

Map<String, dynamic> _$PosCategoryToJson(PosCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'sequence': instance.sequence,
    };
