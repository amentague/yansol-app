// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pos _$PosFromJson(Map<String, dynamic> json) => Pos(
      id: json['id'] as int,
      name: json['name'] as String,
      currencyId: json['currency_id'] as List<dynamic>?,
      receiptHeader: json['receipt_header'] as String?,
      receiptFooter: json['receipt_footer'] as String?,
      sequenceId: json['sequence_id'] as List<dynamic>?,
      sequenceLineId: json['sequence_line_id'] as List<dynamic>?,
      currentSessionId: json['current_session_id'] == false
          ? null
          : json['current_session_id'] as List<dynamic>?,
      currentSessionState: json['current_session_state'] == false
          ? null
          : json['current_session_state'] as String?,
      lastSessionClosingCash:
          (json['last_session_closing_cash'] as num?)?.toDouble(),
      lastSessionClosingDate: json['last_session_closing_date'] == false
          ? null
          : DateTime.parse(json['last_session_closing_date'] as String),
      posSessionUsername: json['pos_session_username'] == false
          ? null
          : json['pos_session_username'] as String?,
      posSessionState: json['pos_session_state'] == false
          ? null
          : json['pos_session_state'] as String?,
      posSessionDuration: json['pos_session_duration'] == false
          ? null
          : json['pos_session_duration'] as String?,
      companyId: json['company_id'] as List<dynamic>?,
      amountAuthorizedDiff:
          (json['amount_authorized_diff'] as num?)?.toDouble(),
      hasActiveSession: json['has_active_session'] as bool?,
      manualDiscount: json['manual_discount'] as bool?,
      warehouseId: json['warehouse_id'] as List<dynamic>?,
      displayName: json['display_name'] as String?,
      useCouponPrograms: json['use_coupon_programs'] as bool?,
      couponProgramIds: (json['coupon_program_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      promoProgramIds: (json['promo_program_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      programIds: (json['program_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      epsonPrinterIp: json['epson_printer_ip'] as String?,
    );

Map<String, dynamic> _$PosToJson(Pos instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'currency_id': instance.currencyId,
      'receipt_header': instance.receiptHeader,
      'receipt_footer': instance.receiptFooter,
      'sequence_id': instance.sequenceId,
      'sequence_line_id': instance.sequenceLineId,
      'current_session_id': instance.currentSessionId,
      'current_session_state': instance.currentSessionState,
      'last_session_closing_cash': instance.lastSessionClosingCash,
      'last_session_closing_date':
          instance.lastSessionClosingDate?.toIso8601String(),
      'pos_session_username': instance.posSessionUsername,
      'pos_session_state': instance.posSessionState,
      'pos_session_duration': instance.posSessionDuration,
      'company_id': instance.companyId,
      'amount_authorized_diff': instance.amountAuthorizedDiff,
      'has_active_session': instance.hasActiveSession,
      'manual_discount': instance.manualDiscount,
      'warehouse_id': instance.warehouseId,
      'display_name': instance.displayName,
      'use_coupon_programs': instance.useCouponPrograms,
      'coupon_program_ids': instance.couponProgramIds,
      'promo_program_ids': instance.promoProgramIds,
      'program_ids': instance.programIds,
      'epson_printer_ip': instance.epsonPrinterIp,
    };
