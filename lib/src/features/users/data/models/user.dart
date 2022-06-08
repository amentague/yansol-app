import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../api/odoo_record.dart';

part 'user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class User extends Equatable implements OdooRecord {
  const User({
    required this.id,
    required this.name,
    required this.login,
    this.password,
    this.email,
    this.active,
    this.groupsId,
    this.employeeIds,
    this.function,
    this.phone,
    this.street,
    this.street2,
    this.city,
    this.companyId,
  });

  @override
  final int id;
  final String name;
  final String login;
  final String? password;
  final String? email;
  final bool? active;
  final List<int>? groupsId;
  final List<int>? employeeIds;
  final String? function;
  final String? phone;
  final String? street;
  final String? street2;
  final String? city;
  final List<dynamic>? companyId;

  // We create fake user with id = 0 in case we are not logged in
  // factory User.publicUser() {
  //   return const User(
  //     id: 0,
  //     login: 'public',
  //     name: 'Public User',
  //     active: false,
  //   );
  // }

  // bool get isPublic => id == 0 ? true : false;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  // List of fields we need to fetch
  static List<String> get oFields => [];

  @override
  String toString() => 'User[$id]: $name ($login), active: $active';

 

   /// Converts [User] to JSON compatible with create or write
  /// For larger models better use code generation.
  @override
  Map<String, dynamic> toVals() {
    return {
      'login': login,
      'name': name,
    };
  }
   @override
  List<Object> get props => [
        id,
        login,
        name,
      ];

  User copyWith({
    int? id,
    String? name,
    String? login,
    String? password,
    String? email,
    bool? active,
    List<int>? groupsId,
    List<int>? employeeIds,
    String? function,
    String? phone,
    String? street,
    String? street2,
    String? city,
    List<dynamic>? companyId,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      login: login ?? this.login,
      password: password ?? this.password,
      email: email ?? this.email,
      active: active ?? this.active,
      groupsId: groupsId ?? this.groupsId,
      employeeIds: employeeIds ?? this.employeeIds,
      function: function ?? this.function,
      phone: phone ?? this.phone,
      street: street ?? this.street,
      street2: street2 ?? this.street2,
      city: city ?? this.city,
      companyId: companyId ?? this.companyId,
    );
  }
}
