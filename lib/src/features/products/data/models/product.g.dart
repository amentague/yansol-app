// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as int,
      name: json['name'] as String,
      price: (json['price'] as num?)?.toDouble(),
      priceExtra: (json['price_extra'] as num?)?.toDouble(),
      code: json['code'] as String?,
      categId: json['categ_id'] as List<dynamic>?,
      defaultCode: json['default_code'] as String?,
      sequence: json['sequence'] as int?,
      description: json['description'] as String?,
      lstPrice: (json['lst_price'] as num?)?.toDouble(),
      barcode: json['barcode'] as String?,
      companyId: json['company_id'] as List<dynamic>?,
      isProductVariant: json['is_product_variant'] as bool?,
      productVariantId: json['product_variant_id'] as List<dynamic>?,
      displayName: json['display_name'] as String?,
      productVariantIds: (json['product_variant_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      taxesId:
          (json['taxes_id'] as List<dynamic>?)?.map((e) => e as int).toList(),
      taxString: json['tax_string'] as String?,
      qtyAvailable: (json['qty_available'] as num?)?.toDouble(),
      virtualAvailable: (json['virtual_available'] as num?)?.toDouble(),
      posCategId: json['pos_categ_id'] as List<dynamic>?,
      imageVariant_1920: json['image_variant_1920'] as String?,
      imageVariant_1024: json['image_variant_1024'] as String?,
      imageVariant_512: json['image_variant_512'] as String?,
      imageVariant_256: json['image_variant_256'] as String?,
      imageVariant_128: json['image_variant_128'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'price_extra': instance.priceExtra,
      'lst_price': instance.lstPrice,
      'sequence': instance.sequence,
      'description': instance.description,
      'categ_id': instance.categId,
      'pos_categ_id': instance.posCategId,
      'default_code': instance.defaultCode,
      'code': instance.code,
      'company_id': instance.companyId,
      'is_product_variant': instance.isProductVariant,
      'product_variant_id': instance.productVariantId,
      'product_variant_ids': instance.productVariantIds,
      'barcode': instance.barcode,
      'display_name': instance.displayName,
      'taxes_id': instance.taxesId,
      'tax_string': instance.taxString,
      'qty_available': instance.qtyAvailable,
      'virtual_available': instance.virtualAvailable,
      'image_variant_1920': instance.imageVariant_1920,
      'image_variant_1024': instance.imageVariant_1024,
      'image_variant_512': instance.imageVariant_512,
      'image_variant_256': instance.imageVariant_256,
      'image_variant_128': instance.imageVariant_128,
    };
