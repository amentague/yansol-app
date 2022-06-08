// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      name: json['name'] as String,
      login: json['login'] as String,
      password: json['password'] as String?,
      email: json['email'] as String?,
      active: json['active'] as bool?,
      groupsId:
          (json['groups_id'] as List<dynamic>?)?.map((e) => e as int).toList(),
      employeeIds: (json['employee_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      function: json['function'] == false ? null : json['function'] as String?,
      phone: json['phone'] == false ? null : json['phone'] as String?,
      street: json['street'] == false ? null : json['street'] as String?,
      street2: json['street2'] == false ? null : json['street2'] as String?,
      city: json['city'] == false ? null : json['city'] as String?,
      companyId: json['company_id'] == false
          ? null
          : json['company_id'] as List<dynamic>?,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'login': instance.login,
      'password': instance.password,
      'email': instance.email,
      'active': instance.active,
      'groups_id': instance.groupsId,
      'employee_ids': instance.employeeIds,
      'function': instance.function,
      'phone': instance.phone,
      'street': instance.street,
      'street2': instance.street2,
      'city': instance.city,
      'company_id': instance.companyId,
    };
