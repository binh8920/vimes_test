import 'package:flutter/material.dart';
import 'package:vimes_test/app/configs/app_colors.dart';
import 'package:vimes_test/app/configs/app_text_styles.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key, required this.onBtnPressed, required this.buttonText});

  final String buttonText;
  final Function()? onBtnPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          minimumSize: const Size.fromHeight(50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: onBtnPressed,
        child: Text(
          buttonText,
          style: AppTextStyles.submit,
        ),
      ),
    );
  }
}
