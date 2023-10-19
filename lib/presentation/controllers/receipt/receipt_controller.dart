import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:vimes_test/app/configs/app_colors.dart';
import 'package:vimes_test/data/models/input_general_info_model.dart';
import 'package:vimes_test/data/models/input_product_info_model.dart';
import 'package:vimes_test/data/models/receipt_model.dart';
import 'package:vimes_test/data/models/receipt_product_model.dart';
import 'package:vimes_test/domain/repositories/receipt_repository.dart';

class ReceiptController extends GetxController {
  final generalInfoFormKey = GlobalKey<FormState>();
  final productInfoFormKey = GlobalKey<FormState>();
  final inputFormModel = InputGeneralInfoModel();
  final inputProductFormModel = InputProductInfoModel();
  var productItemsList = <ReceiptProductsModel>[].obs;

  void submitForm() async {
    if (generalInfoFormKey.currentState!.validate()) {
      print('submit');
      final receipt = ReceiptModel(
          division: inputFormModel.division.value,
          department: inputFormModel.department.value,
          receiptNumber: inputFormModel.receiptNumber.value,
          deliveryNumber: inputFormModel.deliveryNumber.value,
          debit: int.parse(inputFormModel.debit.value),
          credit: int.parse(inputFormModel.credit.value),
          delivererName: inputFormModel.delivererName.value,
          accordingTo: inputFormModel.accordingTo.value,
          of: inputFormModel.of.value,
          inputInStock: inputFormModel.inputInStock.value,
          location: inputFormModel.location.value,
          receiptCreatedDate: inputFormModel.receiptCreatedDate.value,
          deliveredDate: inputFormModel.deliveredDate.value,
          totalAmount: inputFormModel.totalAmount.value,
          numberOfOriginalDocumentsAttached:
              inputFormModel.numberOfOriginalDocumentsAttached.value,
          productList: productItemsList.toList());

      await ReceiptRepository.saveReceiptToDB(receipt)
          .whenComplete(() => Get.snackbar("Success", "You have been created",
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: AppColors.notWhite,
              colorText: AppColors.primary))
          .catchError((error, stackStrace) {
        Get.snackbar("Error", "Try again",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: AppColors.notWhite,
            colorText: AppColors.primary);
        print(error.toString());
      });
      print(receipt);
      productItemsList.clear();
      generalInfoFormKey.currentState!.reset();
    }
  }

  void submitProductForm() {
    if (productInfoFormKey.currentState!.validate()) {
      final product = ReceiptProductsModel(
        productOrder: inputProductFormModel.productOrder.value,
        productName: inputProductFormModel.productName.value,
        code: inputProductFormModel.code.value,
        unit: inputProductFormModel.unit.value,
        accordingToDocumentQuantity:
            int.parse(inputProductFormModel.accordingToDocumentQuantity.value),
        actuallyImportedQuantity:
            int.parse(inputProductFormModel.actuallyImportedQuantity.value),
        unitPrice: double.parse(inputProductFormModel.unitPrice.value),
        amount: double.parse(inputProductFormModel.amount.value),
      );
      productItemsList.add(product);

      productInfoFormKey.currentState!.reset();
    }

    Get.back();
  }
}
