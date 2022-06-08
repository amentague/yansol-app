import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:yansol/src/api/odoo_record.dart';

part 'pos.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Pos extends Equatable implements OdooRecord {
  const Pos({
    required this.id,
    required this.name,
    this.currencyId,
    this.receiptHeader,
    this.receiptFooter,
    this.sequenceId,
    this.sequenceLineId,
    this.currentSessionId,
    this.currentSessionState,
    this.lastSessionClosingCash,
    this.lastSessionClosingDate,
    this.posSessionUsername,
    this.posSessionState,
    this.posSessionDuration,
    this.companyId, 
    this.amountAuthorizedDiff,
    this.hasActiveSession,
    this.manualDiscount,
    this.warehouseId,
    this.displayName,
    this.useCouponPrograms,
    this.couponProgramIds,
    this.promoProgramIds,
    this.programIds,
    this.epsonPrinterIp,
  });

  @override
  final int id;
  final String name;
  final List<dynamic>? currencyId;
  final String? receiptHeader;
  final String? receiptFooter;

  ///This sequence is automatically created by Odoo but you can change it to
  ///customize the reference numbers of your orders.
  final List<dynamic>? sequenceId;

  ///This sequence is automatically created by Odoo but you can change it to
  ///customize the reference numbers of your orders lines.
  final List<dynamic>? sequenceLineId;
  final List<dynamic>? currentSessionId;
  final String? currentSessionState;
  final double? lastSessionClosingCash;
  final DateTime? lastSessionClosingDate;
  final String? posSessionUsername;
  final String? posSessionState;
  final String? posSessionDuration;
  final List<dynamic>? companyId;
  final double? amountAuthorizedDiff;
  final bool? hasActiveSession;
  final bool? manualDiscount;
  final List<dynamic>? warehouseId;
  final String? displayName;
  ///Use coupon and promotion programs in this PoS configuration.
  final bool? useCouponPrograms;
  final List<int>? couponProgramIds;
  final List<int>? promoProgramIds;
  ///Coupons and Promotions
  final List<int>? programIds;
  ///"Local IP address of an Epson receipt printer.
  final String? epsonPrinterIp;


  factory Pos.fromJson(Map<String, dynamic> json) => _$PosFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PosToJson(this);

    @override
  Map<String, dynamic> toVals() {
    return {
      "id": id,
    };
  }

  @override
  List<Object?> get props => [id, name];
 
  Pos copyWith({
    int? id,
    String? name,
    List<dynamic>? currencyId,
    String? receiptHeader,
    String? receiptFooter,
    List<dynamic>? sequenceId,
    List<dynamic>? sequenceLineId,
    List<dynamic>? currentSessionId,
    String? currentSessionState,
    double? lastSessionClosingCash,
    DateTime? lastSessionClosingDate,
    String? posSessionUsername,
    String? posSessionState,
    String? posSessionDuration,
    List<dynamic>? companyId,
    double? amountAuthorizedDiff,
    bool? hasActiveSession,
    bool? manualDiscount,
    List<dynamic>? warehouseId,
    String? displayName,
    bool? useCouponPrograms,
    List<int>? couponProgramIds,
    List<int>? promoProgramIds,
    List<int>? programIds,
    String? epsonPrinterIp,
  }) {
    return Pos(
      id: id ?? this.id,
      name: name ?? this.name,
      currencyId: currencyId ?? this.currencyId,
      receiptHeader: receiptHeader ?? this.receiptHeader,
      receiptFooter: receiptFooter ?? this.receiptFooter,
      sequenceId: sequenceId ?? this.sequenceId,
      sequenceLineId: sequenceLineId ?? this.sequenceLineId,
      currentSessionId: currentSessionId ?? this.currentSessionId,
      currentSessionState: currentSessionState ?? this.currentSessionState,
      lastSessionClosingCash: lastSessionClosingCash ?? this.lastSessionClosingCash,
      lastSessionClosingDate: lastSessionClosingDate ?? this.lastSessionClosingDate,
      posSessionUsername: posSessionUsername ?? this.posSessionUsername,
      posSessionState: posSessionState ?? this.posSessionState,
      posSessionDuration: posSessionDuration ?? this.posSessionDuration,
      companyId: companyId ?? this.companyId,
      amountAuthorizedDiff: amountAuthorizedDiff ?? this.amountAuthorizedDiff,
      hasActiveSession: hasActiveSession ?? this.hasActiveSession,
      manualDiscount: manualDiscount ?? this.manualDiscount,
      warehouseId: warehouseId ?? this.warehouseId,
      displayName: displayName ?? this.displayName,
      useCouponPrograms: useCouponPrograms ?? this.useCouponPrograms,
      couponProgramIds: couponProgramIds ?? this.couponProgramIds,
      promoProgramIds: promoProgramIds ?? this.promoProgramIds,
      programIds: programIds ?? this.programIds,
      epsonPrinterIp: epsonPrinterIp ?? this.epsonPrinterIp,
    );
  }
}
