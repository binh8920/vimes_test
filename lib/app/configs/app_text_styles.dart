import 'package:flutter/material.dart';
import 'package:vimes_test/app/configs/app_colors.dart';

class AppTextStyles {
  static TextStyle title = const TextStyle(
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 20,
    letterSpacing: 0.18,
    color: AppColors.darkerText,
  );
  static TextStyle body1 = const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    fontSize: 14,
    letterSpacing: 0.18,
    color: AppColors.deactivatedText,
  );
  static TextStyle body2 = const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    fontSize: 14,
    letterSpacing: 0.18,
    color: AppColors.primary,
  );
  static TextStyle lightTitle = const TextStyle(
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.18,
    color: AppColors.notWhite,
  );
  static TextStyle body = const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: AppColors.deactivatedText,
  );
  static TextStyle submit = const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.2,
    color: AppColors.notWhite,
  );
  static TextStyle homeHeader = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: AppColors.darkText,
  );
}
