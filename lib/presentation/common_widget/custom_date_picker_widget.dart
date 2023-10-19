import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:vimes_test/app/configs/app_colors.dart';
import 'package:vimes_test/app/configs/app_text_styles.dart';
import 'package:vimes_test/presentation/controllers/receipt/receipt_controller.dart';

class CustomDatePickerWidget extends GetView<ReceiptController> {
  CustomDatePickerWidget({
    super.key,
    required this.hintText,
    required this.textValidator,
    required this.onTextChanged,
  });
  DateTime? dob;
  final String hintText;
  final String? Function(String?) textValidator;
  final Function(String) onTextChanged;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SizedBox(
        height: mediaQuery.height * .09,
        child: Row(
          children: [
            Obx(
              () => Expanded(
                child: TextFormField(
                  readOnly: true,
                  controller: TextEditingController(
                    text: hintText == 'Ngày...'
                        ? controller.inputFormModel.deliveredDate.value
                        : controller.inputFormModel.receiptCreatedDate.value,
                  ),
                  keyboardType: TextInputType.datetime,
                  validator: textValidator,
                  onChanged: onTextChanged,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: const Icon(Icons.calendar_month_rounded),
                      hintText: hintText,
                      hintStyle: AppTextStyles.body,
                      fillColor: AppColors.notWhite,
                      filled: true,
                      prefixIconColor: MaterialStateColor.resolveWith(
                          (states) => states.contains(MaterialState.focused)
                              ? AppColors.primary
                              : AppColors.deactivatedText),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            IconButton(
                onPressed: () async {
                  final dob = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950, 1, 1),
                    lastDate: DateTime.now(),
                  );
                  if (dob != null) {
                    if (hintText == 'Ngày...') {
                      controller.inputFormModel.deliveredDate.value =
                          DateFormat.yMMMd().format(dob);
                    }
                    if (hintText == 'Ngày...tháng...năm') {
                      controller.inputFormModel.receiptCreatedDate.value =
                          DateFormat.yMMMd().format(dob);
                    }
                  }
                },
                icon: const Icon(
                  Icons.calendar_month_outlined,
                  color: AppColors.primary,
                ))
          ],
        ));
  }
}
