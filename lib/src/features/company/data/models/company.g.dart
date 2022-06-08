// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      id: json['id'] as int,
      name: json['name'] as String,
      street: json['street'] as String?,
      street2: json['street2'] as String?,
      zip: json['zip'] as String?,
      city: json['city'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      mobile: json['mobile'] as String?,
      website: json['website'] as String?,
    );

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'street': instance.street,
      'street2': instance.street2,
      'zip': instance.zip,
      'city': instance.city,
      'email': instance.email,
      'phone': instance.phone,
      'mobile': instance.mobile,
      'website': instance.website,
    };
