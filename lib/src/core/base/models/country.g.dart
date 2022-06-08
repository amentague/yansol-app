// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      id: json['id'] as int,
      name: json['name'] as String,
      code: json['code'] as String?,
      addressFormat: json['address_format'] as String?,
      addressViewId: json['address_view_id'] as List<dynamic>?,
      currencyId: json['currency_id'] as List<dynamic>,
      imageUrl: json['image_url'] as String?,
      phoneCode: json['phone_code'] as int?,
      countryGroupIds: (json['country_group_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      stateIds: json['state_ids'] as List<dynamic>?,
      namePosition: json['name_position'] as String?,
      vatLabel: json['vat_label'] as String?,
      stateRequired: json['state_required'] as bool?,
      zipRequired: json['zip_required'] as bool?,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'address_format': instance.addressFormat,
      'address_view_id': instance.addressViewId,
      'currency_id': instance.currencyId,
      'image_url': instance.imageUrl,
      'phone_code': instance.phoneCode,
      'country_group_ids': instance.countryGroupIds,
      'state_ids': instance.stateIds,
      'name_position': instance.namePosition,
      'vat_label': instance.vatLabel,
      'state_required': instance.stateRequired,
      'zip_required': instance.zipRequired,
      'display_name': instance.displayName,
    };

CountryGroup _$CountryGroupFromJson(Map<String, dynamic> json) => CountryGroup(
      id: json['id'] as int,
      name: json['name'] as String,
      countryIds: (json['country_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      pricelistIds: json['pricelist_ids'] as List<dynamic>?,
    );

Map<String, dynamic> _$CountryGroupToJson(CountryGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country_ids': instance.countryIds,
      'pricelist_ids': instance.pricelistIds,
    };

CountryState _$CountryStateFromJson(Map<String, dynamic> json) => CountryState(
      id: json['id'] as int,
      countryId: json['country_id'] as List<dynamic>,
      name: json['name'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$CountryStateToJson(CountryState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_id': instance.countryId,
      'name': instance.name,
      'code': instance.code,
    };
