import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../api/odoo_record.dart';

part 'product.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Product extends Equatable implements OdooRecord {
  const Product({
    required this.id,
    required this.name,
    this.price,
    this.priceExtra,
    this.code,
    this.categId,
    this.defaultCode,
    this.sequence,
    this.description,
    this.lstPrice,
    this.barcode,
    this.companyId,
    this.isProductVariant,
    this.productVariantId,
    this.displayName,
    this.productVariantIds,
    this.taxesId,
    this.taxString,
    this.qtyAvailable,
    this.virtualAvailable,
    this.posCategId,
    this.imageVariant_1920,
    this.imageVariant_1024,
    this.imageVariant_512,
    this.imageVariant_256,
    this.imageVariant_128,
  });

  @override
  final int id;
  final String name;
  final double? price;
  final double? priceExtra;
  final double? lstPrice;
  final int? sequence;
  final String? description;
  final List<dynamic>? categId;
  final List<dynamic>? posCategId;
  final String? defaultCode;
  final String? code;
  final List<dynamic>? companyId;
  final bool? isProductVariant;
  final List<dynamic>? productVariantId;
  final List<int>? productVariantIds;
  final String? barcode;
  final String? displayName;
  final List<int>? taxesId;
  final String? taxString;
  final double? qtyAvailable;
  final double? virtualAvailable;
  final String? imageVariant_1920;
  final String? imageVariant_1024;
  final String? imageVariant_512;
  final String? imageVariant_256;
  final String? imageVariant_128;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  static List<String> get oFields => [];

  @override
  Map<String, dynamic> toVals() {
    return {};
  }

  @override
  List<Object?> get props => [id, name];

  Product copyWith({
    int? id,
    String? name,
    double? price,
    double? priceExtra,
    double? lstPrice,
    int? sequence,
    String? description,
    List<dynamic>? categId,
    List<dynamic>? posCategId,
    String? defaultCode,
    String? code,
    List<dynamic>? companyId,
    bool? isProductVariant,
    List<dynamic>? productVariantId,
    List<int>? productVariantIds,
    String? barcode,
    String? displayName,
    List<int>? taxesId,
    String? taxString,
    double? qtyAvailable,
    double? virtualAvailable,
    String? imageVariant_1920,
    String? imageVariant_1024,
    String? imageVariant_512,
    String? imageVariant_256,
    String? imageVariant_128,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      priceExtra: priceExtra ?? this.priceExtra,
      lstPrice: lstPrice ?? this.lstPrice,
      sequence: sequence ?? this.sequence,
      description: description ?? this.description,
      categId: categId ?? this.categId,
      posCategId: posCategId ?? this.posCategId,
      defaultCode: defaultCode ?? this.defaultCode,
      code: code ?? this.code,
      companyId: companyId ?? this.companyId,
      isProductVariant: isProductVariant ?? this.isProductVariant,
      productVariantId: productVariantId ?? this.productVariantId,
      productVariantIds: productVariantIds ?? this.productVariantIds,
      barcode: barcode ?? this.barcode,
      displayName: displayName ?? this.displayName,
      taxesId: taxesId ?? this.taxesId,
      taxString: taxString ?? this.taxString,
      qtyAvailable: qtyAvailable ?? this.qtyAvailable,
      virtualAvailable: virtualAvailable ?? this.virtualAvailable,
      imageVariant_1920: imageVariant_1920 ?? this.imageVariant_1920,
      imageVariant_1024: imageVariant_1024 ?? this.imageVariant_1024,
      imageVariant_512: imageVariant_512 ?? this.imageVariant_512,
      imageVariant_256: imageVariant_256 ?? this.imageVariant_256,
      imageVariant_128: imageVariant_128 ?? this.imageVariant_128,
    );
  }
}
