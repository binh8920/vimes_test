// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReceiptModel _$ReceiptModelFromJson(Map<String, dynamic> json) => ReceiptModel(
      division: json['division'] as String?,
      department: json['department'] as String?,
      receiptNumber: json['receiptNumber'] as String?,
      deliveryNumber: json['deliveryNumber'] as String?,
      debit: json['debit'] as int?,
      credit: json['credit'] as int?,
      delivererName: json['delivererName'] as String?,
      accordingTo: json['accordingTo'] as String?,
      of: json['of'] as String?,
      inputInStock: json['inputInStock'] as String?,
      location: json['location'] as String?,
      receiptCreatedDate: json['receiptCreatedDate'] as String?,
      deliveredDate: json['deliveredDate'] as String?,
      totalAmount: json['totalAmount'] as String?,
      numberOfOriginalDocumentsAttached:
          json['numberOfOriginalDocumentsAttached'] as String?,
      productList: (json['productList'] as List<dynamic>?)
          ?.map((e) => ReceiptProductsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReceiptModelToJson(ReceiptModel instance) =>
    <String, dynamic>{
      'division': instance.division,
      'department': instance.department,
      'receiptNumber': instance.receiptNumber,
      'deliveryNumber': instance.deliveryNumber,
      'debit': instance.debit,
      'credit': instance.credit,
      'delivererName': instance.delivererName,
      'accordingTo': instance.accordingTo,
      'of': instance.of,
      'inputInStock': instance.inputInStock,
      'location': instance.location,
      'receiptCreatedDate': instance.receiptCreatedDate,
      'deliveredDate': instance.deliveredDate,
      'totalAmount': instance.totalAmount,
      'numberOfOriginalDocumentsAttached':
          instance.numberOfOriginalDocumentsAttached,
      'productList': instance.productList?.map((e) => e.toJson()).toList(),
    };
