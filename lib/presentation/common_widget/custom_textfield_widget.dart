import 'package:flutter/material.dart';
import 'package:vimes_test/app/configs/app_colors.dart';
import 'package:vimes_test/app/configs/app_text_styles.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key,
      required this.textEditController,
      required this.textInputType,
      required this.iconData,
      required this.hintText,
      required this.textValidator,
      required this.onTextChanged});
  final String textEditController;
  final TextInputType textInputType;
  final IconData iconData;
  final String hintText;
  final String? Function(String?) textValidator;
  final Function(String) onTextChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      controller: TextEditingController(text: textEditController),
      validator: textValidator,
      onChanged: onTextChanged,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          prefixIcon: Icon(iconData),
          prefixIconColor: MaterialStateColor.resolveWith((states) =>
              states.contains(MaterialState.focused)
                  ? AppColors.primary
                  : AppColors.deactivatedText),
          hintText: hintText,
          hintStyle: AppTextStyles.body,
          fillColor: AppColors.notWhite,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none)),
    );
  }
}
