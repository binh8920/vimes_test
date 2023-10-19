import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vimes_test/app/configs/app_colors.dart';

import 'package:vimes_test/app/configs/app_text_styles.dart';
import 'package:vimes_test/presentation/common_widget/custom_button_widget.dart';
import 'package:vimes_test/presentation/common_widget/vertical_spacer_widget.dart';
import 'package:vimes_test/presentation/controllers/receipt/receipt_controller.dart';
import 'package:vimes_test/presentation/pages/home/widgets/general_info_widget.dart';
import 'package:vimes_test/presentation/pages/home/widgets/list_product_widget.dart';

class HomePage extends GetView<ReceiptController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        title: Text(
          'PHIẾU NHẬP KHO',
          style: AppTextStyles.lightTitle,
        ),
      ),
      body: SafeArea(
          child: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                  key: controller.generalInfoFormKey,
                  child: GeneralInfoWidget()),
              ListProductWidget(),
              Center(
                child: CustomButtonWidget(
                    onBtnPressed: controller.submitForm,
                    buttonText: 'Nộp phiếu'),
              ),
              VerticalSpacer(20),
            ],
          ),
        ),
      )),
    );
  }
}
