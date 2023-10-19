import 'package:flutter/material.dart';
import 'package:vimes_test/app/configs/app_colors.dart';

class CustomLineWidget extends StatelessWidget {
  const CustomLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 200),
      child: Container(
        height: 10,
        width: 50,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
