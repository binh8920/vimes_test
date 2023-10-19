import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:vimes_test/app/configs/app_text_styles.dart';
import 'package:vimes_test/presentation/common_widget/custom_button_widget.dart';
import 'package:vimes_test/presentation/common_widget/custom_line_widget.dart';
import 'package:vimes_test/presentation/common_widget/custom_textfield_widget.dart';
import 'package:vimes_test/presentation/common_widget/vertical_spacer_widget.dart';
import 'package:vimes_test/presentation/controllers/receipt/receipt_controller.dart';

class ProductInfoWidget extends GetView<ReceiptController> {
  const ProductInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Form(
        key: controller.productInfoFormKey,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Thông tin sản phẩm',
                style: AppTextStyles.homeHeader,
              ),
              const VerticalSpacer(10),
              const CustomLineWidget(),
              const VerticalSpacer(30),
              CustomTextFieldWidget(
                  onTextChanged: (value) => controller
                      .inputProductFormModel.productOrder.value = value,
                  textValidator:
                      controller.inputProductFormModel.validateString,
                  textEditController:
                      controller.inputProductFormModel.productOrder.value,
                  textInputType: TextInputType.name,
                  iconData: Icons.format_list_numbered_outlined,
                  hintText: 'STT'),
              const VerticalSpacer(10),
              CustomTextFieldWidget(
                  onTextChanged: (value) => controller
                      .inputProductFormModel.productName.value = value,
                  textValidator:
                      controller.inputProductFormModel.validateString,
                  textEditController:
                      controller.inputProductFormModel.productName.value,
                  textInputType: TextInputType.name,
                  iconData: Icons.title_rounded,
                  hintText: 'Tên, nhãn hiệu, ...'),
              const VerticalSpacer(10),
              CustomTextFieldWidget(
                  onTextChanged: (value) =>
                      controller.inputProductFormModel.code.value = value,
                  textValidator:
                      controller.inputProductFormModel.validateString,
                  textEditController:
                      controller.inputProductFormModel.code.value,
                  textInputType: TextInputType.name,
                  iconData: Icons.numbers_rounded,
                  hintText: 'Mã số'),
              const VerticalSpacer(10),
              CustomTextFieldWidget(
                  onTextChanged: (value) =>
                      controller.inputProductFormModel.unit.value = value,
                  textValidator:
                      controller.inputProductFormModel.validateString,
                  textEditController:
                      controller.inputProductFormModel.unit.value,
                  textInputType: TextInputType.name,
                  iconData: Icons.app_registration,
                  hintText: 'Đơn vị tính'),
              const VerticalSpacer(10),
              CustomTextFieldWidget(
                  onTextChanged: (value) => controller.inputProductFormModel
                      .accordingToDocumentQuantity.value = value,
                  textValidator:
                      controller.inputProductFormModel.validateNumber,
                  textEditController: controller
                      .inputProductFormModel.accordingToDocumentQuantity.value,
                  textInputType: TextInputType.number,
                  iconData: Icons.numbers_rounded,
                  hintText: 'Theo chứng từ'),
              const VerticalSpacer(10),
              CustomTextFieldWidget(
                  onTextChanged: (value) => controller.inputProductFormModel
                      .actuallyImportedQuantity.value = value,
                  textValidator:
                      controller.inputProductFormModel.validateNumber,
                  textEditController: controller
                      .inputProductFormModel.actuallyImportedQuantity.value,
                  textInputType: TextInputType.number,
                  iconData: Icons.numbers_rounded,
                  hintText: 'Thực nhập'),
              const VerticalSpacer(10),
              CustomTextFieldWidget(
                  onTextChanged: (value) =>
                      controller.inputProductFormModel.unitPrice.value = value,
                  textValidator:
                      controller.inputProductFormModel.validateNumber,
                  textEditController:
                      controller.inputProductFormModel.unitPrice.value,
                  textInputType: TextInputType.number,
                  iconData: Icons.price_check,
                  hintText: 'Đơn giá'),
              const VerticalSpacer(10),
              CustomTextFieldWidget(
                  onTextChanged: (value) =>
                      controller.inputProductFormModel.amount.value = value,
                  textValidator:
                      controller.inputProductFormModel.validateNumber,
                  textEditController:
                      controller.inputProductFormModel.amount.value,
                  textInputType: TextInputType.number,
                  iconData: Icons.monetization_on_rounded,
                  hintText: 'Thành tiền'),
              const VerticalSpacer(20),
              Center(
                child: CustomButtonWidget(
                    onBtnPressed: controller.submitProductForm,
                    buttonText: 'Thêm sản phẩm'),
              ),
              const VerticalSpacer(20),
            ]),
      ),
    );
  }
}
