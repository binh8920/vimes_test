import 'package:flutter/material.dart';

import 'package:vimes_test/app/configs/app_colors.dart';
import 'package:vimes_test/app/configs/app_text_styles.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget(
      {super.key, required this.productName, required this.unitPrice});
  final String? productName;
  final String? unitPrice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.notWhite,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: SizedBox(
        height: 50,
        width: 100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  productName!,
                  style: AppTextStyles.body1,
                ),
                Text(
                  unitPrice!,
                  style: AppTextStyles.body2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
