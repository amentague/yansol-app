import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:yansol/src/api/odoo_record.dart';

part 'country.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Country extends Equatable implements OdooRecord {
  const Country({
    required this.id,
    required this.name,
    this.code,
    this.addressFormat,
    this.addressViewId,
    required this.currencyId,
    this.imageUrl,
    this.phoneCode,
    this.countryGroupIds,
    this.stateIds,
    this.namePosition,
    this.vatLabel,
    this.stateRequired,
    this.zipRequired,
    this.displayName,
  });

  @override
  final int id;
  final String name;
  final String? code;

  /// default='%(street)s\n%(street2)s\n%(city)s %(state_code)s %(zip)s\n%(country_name)s
  final String? addressFormat;
  final List<dynamic>? addressViewId;
  final List<dynamic> currencyId;

  /// Url of static flag image
  final String? imageUrl;
  final int? phoneCode;
  final List<int>? countryGroupIds;
  final List<dynamic>? stateIds;

  /// ('before', 'Before Address'),  ('after', 'After Address'),
  /// Determines where the customer/company name should be placed, i.e. after or before the address.
  final String? namePosition;

  /// Use this field if you want to change vat label.
  final String? vatLabel;
  final bool? stateRequired;
  final bool? zipRequired;

  /// Computed
  final String? displayName;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CountryToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {"id": id};
  }

  @override
  List<Object?> get props => [id, name];

  Country copyWith({
    int? id,
    String? name,
    String? code,
    String? addressFormat,
    List<dynamic>? addressViewId,
    List<dynamic>? currencyId,
    String? imageUrl,
    int? phoneCode,
    List<int>? countryGroupIds,
    List<dynamic>? stateIds,
    String? namePosition,
    String? vatLabel,
    bool? stateRequired,
    bool? zipRequired,
    String? displayName,
  }) {
    return Country(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      addressFormat: addressFormat ?? this.addressFormat,
      addressViewId: addressViewId ?? this.addressViewId,
      currencyId: currencyId ?? this.currencyId,
      imageUrl: imageUrl ?? this.imageUrl,
      phoneCode: phoneCode ?? this.phoneCode,
      countryGroupIds: countryGroupIds ?? this.countryGroupIds,
      stateIds: stateIds ?? this.stateIds,
      namePosition: namePosition ?? this.namePosition,
      vatLabel: vatLabel ?? this.vatLabel,
      stateRequired: stateRequired ?? this.stateRequired,
      zipRequired: zipRequired ?? this.zipRequired,
      displayName: displayName ?? this.displayName,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CountryGroup extends Equatable implements OdooRecord {
  const CountryGroup({
    required this.id,
    required this.name,
    this.countryIds,
    this.pricelistIds,
  });
  @override
  final int id;
  final String name;

  ///Countries
  final List<int>? countryIds;

  final List<dynamic>? pricelistIds;

 factory CountryGroup.fromJson(Map<String, dynamic> json) =>
      _$CountryGroupFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CountryGroupToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {"id": id};
  }

  @override
  List<Object?> get props => [id, name];

  CountryGroup copyWith({
    int? id,
    String? name,
    List<int>? countryIds,
    List<dynamic>? pricelistIds,
  }) {
    return CountryGroup(
      id: id ?? this.id,
      name: name ?? this.name,
      countryIds: countryIds ?? this.countryIds,
      pricelistIds: pricelistIds ?? this.pricelistIds,
    );
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CountryState extends Equatable implements OdooRecord {
  const CountryState({
    required this.id,
    required this.countryId,
    required this.name,
    required this.code,
  });
  @override
  final int id;

  ///Country
  final List<dynamic> countryId;
  final String name;

  ///State Code
  final String code;

  factory CountryState.fromJson(Map<String, dynamic> json) =>
      _$CountryStateFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CountryStateToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {"id": id};
  }

  @override
  List<Object?> get props => [id, name, code, countryId];

  CountryState copyWith({
    int? id,
    List<dynamic>? countryId,
    String? name,
    String? code,
  }) {
    return CountryState(
      id: id ?? this.id,
      countryId: countryId ?? this.countryId,
      name: name ?? this.name,
      code: code ?? this.code,
    );
  }
}
