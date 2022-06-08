// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosSession _$PosSessionFromJson(Map<String, dynamic> json) => PosSession(
      id: json['id'] as int,
      companyId: json['company_id'] as List<dynamic>?,
      configId: json['config_id'] as List<dynamic>?,
      name: json['name'] as String?,
      userId: json['user_id'] as List<dynamic>?,
      startAt: json['start_at'] == null
          ? null
          : DateTime.parse(json['start_at'] as String),
      stopAt: json['stop_at'] == null
          ? null
          : DateTime.parse(json['stop_at'] as String),
      state: json['state'] as String?,
      sequenceNumber: json['sequence_number'] as int?,
      loginNumber: json['login_number'] as int?,
      cashJournalId: json['cash_journal_id'] as List<dynamic>?,
      cashRegisterId: json['cash_register_id'] as List<dynamic>?,
      cashRegisterBalanceEndReal:
          (json['cash_register_balance_end_real'] as num?)?.toDouble(),
      cashRegisterBalanceStart:
          (json['cash_register_balance_start'] as num?)?.toDouble(),
      cashRegisterTotalEntryEncoding:
          (json['cash_register_total_entry_encoding'] as num?)?.toDouble(),
      cashRegisterBalanceEnd:
          (json['cash_register_balance_end'] as num?)?.toDouble(),
      cashRegisterDifference:
          (json['cash_register_difference'] as num?)?.toDouble(),
      cashRealDifference: (json['cash_real_difference'] as num?)?.toDouble(),
      cashRealTransaction: (json['cash_real_transaction'] as num?)?.toDouble(),
      cashRealExpected: (json['cash_real_expected'] as num?)?.toDouble(),
      orderIds:
          (json['order_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      orderCount: json['order_count'] as int?,
      statementIds: (json['statement_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      moveId: json['move_id'] as List<dynamic>?,
      totalPaymentsAmount: (json['total_payments_amount'] as num?)?.toDouble(),
      bankPaymentIds: (json['bank_payment_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$PosSessionToJson(PosSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'config_id': instance.configId,
      'name': instance.name,
      'user_id': instance.userId,
      'start_at': instance.startAt?.toIso8601String(),
      'stop_at': instance.stopAt?.toIso8601String(),
      'state': instance.state,
      'sequence_number': instance.sequenceNumber,
      'login_number': instance.loginNumber,
      'cash_journal_id': instance.cashJournalId,
      'cash_register_id': instance.cashRegisterId,
      'cash_register_balance_end_real': instance.cashRegisterBalanceEndReal,
      'cash_register_balance_start': instance.cashRegisterBalanceStart,
      'cash_register_total_entry_encoding':
          instance.cashRegisterTotalEntryEncoding,
      'cash_register_balance_end': instance.cashRegisterBalanceEnd,
      'cash_register_difference': instance.cashRegisterDifference,
      'cash_real_difference': instance.cashRealDifference,
      'cash_real_transaction': instance.cashRealTransaction,
      'cash_real_expected': instance.cashRealExpected,
      'order_ids': instance.orderIds,
      'order_count': instance.orderCount,
      'statement_ids': instance.statementIds,
      'move_id': instance.moveId,
      'total_payments_amount': instance.totalPaymentsAmount,
      'bank_payment_ids': instance.bankPaymentIds,
    };
