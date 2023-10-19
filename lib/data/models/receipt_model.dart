import 'package:json_annotation/json_annotation.dart';
import 'package:vimes_test/data/models/receipt_product_model.dart';

part 'receipt_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ReceiptModel {
  final String? division;
  final String? department;
  final String? receiptNumber;
  final String? deliveryNumber;
  final int? debit;
  final int? credit;
  final String? delivererName;
  final String? accordingTo;
  final String? of;
  final String? inputInStock;
  final String? location;
  final String? receiptCreatedDate;
  final String? deliveredDate;
  final String? totalAmount;
  final String? numberOfOriginalDocumentsAttached;
  final List<ReceiptProductsModel>? productList;

  ReceiptModel(
      {this.division,
      this.department,
      this.receiptNumber,
      this.deliveryNumber,
      this.debit,
      this.credit,
      this.delivererName,
      this.accordingTo,
      this.of,
      this.inputInStock,
      this.location,
      this.receiptCreatedDate,
      this.deliveredDate,
      this.totalAmount,
      this.numberOfOriginalDocumentsAttached,
      this.productList});

  //fromJson
  factory ReceiptModel.fromJson(Map<String, dynamic> json) =>
      _$ReceiptModelFromJson(json);

  //toJson
  Map<String, dynamic> toJson() => _$ReceiptModelToJson(this);
}
