import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:vimes_test/app/configs/app_text_styles.dart';
import 'package:vimes_test/presentation/common_widget/custom_date_picker_widget.dart';
import 'package:vimes_test/presentation/common_widget/custom_line_widget.dart';
import 'package:vimes_test/presentation/common_widget/custom_textfield_widget.dart';
import 'package:vimes_test/presentation/common_widget/vertical_spacer_widget.dart';
import 'package:vimes_test/presentation/controllers/receipt/receipt_controller.dart';

class GeneralInfoWidget extends GetView<ReceiptController> {
  const GeneralInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Thông tin chung',
              style: AppTextStyles.homeHeader,
            ),
            const VerticalSpacer(10),
            const CustomLineWidget(),
            const VerticalSpacer(30),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.division.value = value,
                textValidator: controller.inputFormModel.validateString,
                textEditController: controller.inputFormModel.division.value,
                textInputType: TextInputType.name,
                iconData: Icons.app_registration,
                hintText: 'Đơn vị'),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.department.value = value,
                textValidator: controller.inputFormModel.validateString,
                textEditController: controller.inputFormModel.department.value,
                textInputType: TextInputType.name,
                iconData: Icons.app_registration,
                hintText: 'Bộ phận'),
            CustomDatePickerWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.receiptCreatedDate.value = value,
                textValidator: controller.inputFormModel.validateString,
                hintText: 'Ngày...tháng...năm'),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.receiptNumber.value = value,
                textValidator: controller.inputFormModel.validateString,
                textEditController:
                    controller.inputFormModel.receiptNumber.value,
                textInputType: TextInputType.name,
                iconData: Icons.numbers_rounded,
                hintText: 'Số'),
            const VerticalSpacer(10),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.debit.value = value,
                textValidator: controller.inputFormModel.validateNumber,
                textEditController:
                    controller.inputFormModel.debit.value.toString(),
                textInputType: TextInputType.number,
                iconData: Icons.done,
                hintText: 'Nợ'),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.credit.value = value,
                textValidator: controller.inputFormModel.validateNumber,
                textEditController:
                    controller.inputFormModel.credit.value.toString(),
                textInputType: TextInputType.number,
                iconData: Icons.close,
                hintText: 'Có'),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.delivererName.value = value,
                textValidator: controller.inputFormModel.validateString,
                textEditController:
                    controller.inputFormModel.delivererName.value,
                textInputType: TextInputType.name,
                iconData: Icons.person,
                hintText: 'Họ và tên người giao'),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.accordingTo.value = value,
                textValidator: controller.inputFormModel.validateString,
                textEditController: controller.inputFormModel.accordingTo.value,
                textInputType: TextInputType.name,
                iconData: Icons.app_registration,
                hintText: 'Theo'),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.deliveryNumber.value = value,
                textValidator: controller.inputFormModel.validateString,
                textEditController:
                    controller.inputFormModel.deliveryNumber.value,
                textInputType: TextInputType.name,
                iconData: Icons.numbers_rounded,
                hintText: 'Số'),
            CustomDatePickerWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.deliveredDate.value = value,
                textValidator: controller.inputFormModel.validateString,
                hintText: 'Ngày...'),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.of.value = value,
                textValidator: controller.inputFormModel.validateString,
                textEditController: controller.inputFormModel.of.value,
                textInputType: TextInputType.name,
                iconData: Icons.app_registration,
                hintText: 'Của'),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.inputInStock.value = value,
                textValidator: controller.inputFormModel.validateString,
                textEditController:
                    controller.inputFormModel.inputInStock.value,
                textInputType: TextInputType.name,
                iconData: Icons.apartment,
                hintText: 'Nhập tại kho'),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.location.value = value,
                textValidator: controller.inputFormModel.validateString,
                textEditController: controller.inputFormModel.location.value,
                textInputType: TextInputType.name,
                iconData: Icons.location_pin,
                hintText: 'Địa điểm'),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) =>
                    controller.inputFormModel.totalAmount.value = value,
                textValidator: controller.inputProductFormModel.validateString,
                textEditController: controller.inputFormModel.totalAmount.value,
                textInputType: TextInputType.name,
                iconData: Icons.summarize,
                hintText: 'Tổng số tiền(bằng chữ)'),
            const VerticalSpacer(10),
            CustomTextFieldWidget(
                onTextChanged: (value) => controller.inputFormModel
                    .numberOfOriginalDocumentsAttached.value = value,
                textValidator: controller.inputProductFormModel.validateString,
                textEditController: controller
                    .inputFormModel.numberOfOriginalDocumentsAttached.value,
                textInputType: TextInputType.name,
                iconData: Icons.attach_file,
                hintText: 'Số chứng từ gốc kèm'),
          ]),
    );
  }
}
