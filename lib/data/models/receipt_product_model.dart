import 'package:json_annotation/json_annotation.dart';

part 'receipt_product_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ReceiptProductsModel {
  final String? productOrder;
  final String? productName;
  final String? code;
  final String? unit;
  final int? accordingToDocumentQuantity;
  final int? actuallyImportedQuantity;
  final double? unitPrice;
  final double? amount;

  ReceiptProductsModel({
    this.productOrder,
    this.productName,
    this.code,
    this.unit,
    this.accordingToDocumentQuantity,
    this.actuallyImportedQuantity,
    this.unitPrice,
    this.amount,
  });

  //fromJson
  factory ReceiptProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptProductsModelFromJson(json);

  //toJson
  Map<String, dynamic> toJson() => _$ReceiptProductsModelToJson(this);
}
