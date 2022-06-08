import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:yansol/src/api/odoo_record.dart';

part 'company.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Company extends Equatable implements OdooRecord {
  const Company({
    required this.id,
    required this.name,
    this.street,
    this.street2,
    this.zip,
    this.city,
    this.email,
    this.phone,
    this.mobile,
    this.website,
 
  });

  @override
  final int id;
  final String name;
  final String? street;
  final String? street2;
  final String? zip;
  final String? city;
  final String? email;
  final String? phone;
  final String? mobile;
  final String? website;


  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {
      "id": id,
    };
  }

  @override
  List<Object?> get props => [id, name];

  static List<String> get oFields => [];

  

  Company copyWith({
    int? id,
    String? name,
    String? street,
    String? street2,
    String? zip,
    String? city,
    String? email,
    String? phone,
    String? mobile,
    String? website,
  }) {
    return Company(
      id: id ?? this.id,
      name: name ?? this.name,
      street: street ?? this.street,
      street2: street2 ?? this.street2,
      zip: zip ?? this.zip,
      city: city ?? this.city,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      mobile: mobile ?? this.mobile,
      website: website ?? this.website,
    );
  }
}
