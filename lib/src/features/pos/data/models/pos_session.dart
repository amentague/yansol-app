import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:yansol/src/api/odoo_record.dart';
part 'pos_session.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PosSession extends Equatable implements OdooRecord {
  const PosSession({
    required this.id,
    this.companyId,
    this.configId,
    this.name,
    this.userId,
    this.startAt,
    this.stopAt,
    this.state,
    this.sequenceNumber,
    this.loginNumber,
    this.cashJournalId,
    this.cashRegisterId,
    this.cashRegisterBalanceEndReal,
    this.cashRegisterBalanceStart,
    this.cashRegisterTotalEntryEncoding,
    this.cashRegisterBalanceEnd,
    this.cashRegisterDifference,
    this.cashRealDifference,
    this.cashRealTransaction,
    this.cashRealExpected,
    this.orderIds,
    this.orderCount,
    this.statementIds,
    this.moveId,
    this.totalPaymentsAmount,
    this.bankPaymentIds,
  });

  @override
  final int id;
  final List<dynamic>? companyId;

  final List<dynamic>? configId;
  final String? name;
  final List<dynamic>? userId;
  final DateTime? startAt;
  final DateTime? stopAt;

  final String? state;

  final int? sequenceNumber;
  final int? loginNumber;

  final List<dynamic>? cashJournalId;
  final List<dynamic>? cashRegisterId;

  final double? cashRegisterBalanceEndReal;
  final double? cashRegisterBalanceStart;
  final double? cashRegisterTotalEntryEncoding;
  final double? cashRegisterBalanceEnd;
  final double? cashRegisterDifference;
  final double? cashRealDifference;
  final double? cashRealTransaction;
  final double? cashRealExpected;

  final List<int>? orderIds;
  final int? orderCount;
  final List<int>? statementIds;

  final List<dynamic>? moveId;

  final double? totalPaymentsAmount;

  final List<int>? bankPaymentIds;

  factory PosSession.fromJson(Map<String, dynamic> json) =>
      _$PosSessionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PosSessionToJson(this);

  @override
  Map<String, dynamic> toVals() {
    return {
      "id": id,
    };
  }

  @override
  List<Object?> get props => [id];

  PosSession copyWith({
    int? id,
    List<dynamic>? companyId,
    List<dynamic>? configId,
    String? name,
    List<dynamic>? userId,
    DateTime? startAt,
    DateTime? stopAt,
    String? state,
    int? sequenceNumber,
    int? loginNumber,
    List<dynamic>? cashJournalId,
    List<dynamic>? cashRegisterId,
    double? cashRegisterBalanceEndReal,
    double? cashRegisterBalanceStart,
    double? cashRegisterTotalEntryEncoding,
    double? cashRegisterBalanceEnd,
    double? cashRegisterDifference,
    double? cashRealDifference,
    double? cashRealTransaction,
    double? cashRealExpected,
    List<int>? orderIds,
    int? orderCount,
    List<int>? statementIds,
    List<dynamic>? moveId,
    double? totalPaymentsAmount,
    List<int>? bankPaymentIds,
  }) {
    return PosSession(
      id: id ?? this.id,
      companyId: companyId ?? this.companyId,
      configId: configId ?? this.configId,
      name: name ?? this.name,
      userId: userId ?? this.userId,
      startAt: startAt ?? this.startAt,
      stopAt: stopAt ?? this.stopAt,
      state: state ?? this.state,
      sequenceNumber: sequenceNumber ?? this.sequenceNumber,
      loginNumber: loginNumber ?? this.loginNumber,
      cashJournalId: cashJournalId ?? this.cashJournalId,
      cashRegisterId: cashRegisterId ?? this.cashRegisterId,
      cashRegisterBalanceEndReal:
          cashRegisterBalanceEndReal ?? this.cashRegisterBalanceEndReal,
      cashRegisterBalanceStart:
          cashRegisterBalanceStart ?? this.cashRegisterBalanceStart,
      cashRegisterTotalEntryEncoding:
          cashRegisterTotalEntryEncoding ?? this.cashRegisterTotalEntryEncoding,
      cashRegisterBalanceEnd:
          cashRegisterBalanceEnd ?? this.cashRegisterBalanceEnd,
      cashRegisterDifference:
          cashRegisterDifference ?? this.cashRegisterDifference,
      cashRealDifference: cashRealDifference ?? this.cashRealDifference,
      cashRealTransaction: cashRealTransaction ?? this.cashRealTransaction,
      cashRealExpected: cashRealExpected ?? this.cashRealExpected,
      orderIds: orderIds ?? this.orderIds,
      orderCount: orderCount ?? this.orderCount,
      statementIds: statementIds ?? this.statementIds,
      moveId: moveId ?? this.moveId,
      totalPaymentsAmount: totalPaymentsAmount ?? this.totalPaymentsAmount,
      bankPaymentIds: bankPaymentIds ?? this.bankPaymentIds,
    );
  }
}
