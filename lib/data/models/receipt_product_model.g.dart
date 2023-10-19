// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReceiptProductsModel _$ReceiptProductsModelFromJson(
        Map<String, dynamic> json) =>
    ReceiptProductsModel(
      productOrder: json['productOrder'] as String?,
      productName: json['productName'] as String?,
      code: json['code'] as String?,
      unit: json['unit'] as String?,
      accordingToDocumentQuantity: json['accordingToDocumentQuantity'] as int?,
      actuallyImportedQuantity: json['actuallyImportedQuantity'] as int?,
      unitPrice: (json['unitPrice'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ReceiptProductsModelToJson(
        ReceiptProductsModel instance) =>
    <String, dynamic>{
      'productOrder': instance.productOrder,
      'productName': instance.productName,
      'code': instance.code,
      'unit': instance.unit,
      'accordingToDocumentQuantity': instance.accordingToDocumentQuantity,
      'actuallyImportedQuantity': instance.actuallyImportedQuantity,
      'unitPrice': instance.unitPrice,
      'amount': instance.amount,
    };
