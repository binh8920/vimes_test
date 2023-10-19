import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vimes_test/app/configs/app_colors.dart';

import 'package:vimes_test/app/configs/app_text_styles.dart';
import 'package:vimes_test/presentation/common_widget/custom_line_widget.dart';
import 'package:vimes_test/presentation/common_widget/vertical_spacer_widget.dart';
import 'package:vimes_test/presentation/controllers/receipt/receipt_controller.dart';
import 'package:vimes_test/presentation/pages/home/widgets/product_info_widget.dart';
import 'package:vimes_test/presentation/pages/home/widgets/product_item_widget.dart';

class ListProductWidget extends GetView<ReceiptController> {
  const ListProductWidget({super.key});

  void _showBottomModal() {
    Get.bottomSheet(Container(
        color: AppColors.nearlyWhite,
        child: const SingleChildScrollView(
          child: ProductInfoWidget(),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Danh sách sản phẩm',
              style: AppTextStyles.homeHeader,
            ),
            const VerticalSpacer(10),
            const CustomLineWidget(),
            const VerticalSpacer(20),
            Obx(
              () => controller.productItemsList.isEmpty
                  ? Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hiện chưa có sản phẩm nào!",
                            style: AppTextStyles.body1,
                          ),
                          TextButton(
                            //TODO: logic
                            onPressed: () {
                              _showBottomModal();
                            },
                            child: Text(
                              "Thêm sản phẩm",
                              style: AppTextStyles.body2,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.productItemsList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: ProductItemWidget(
                                    productName: controller
                                        .productItemsList[index].productName,
                                    unitPrice: controller
                                        .productItemsList[index].unitPrice
                                        .toString()),
                              );
                            }),
                        const VerticalSpacer(20),
                        SizedBox(
                            width: 50,
                            height: 50,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                padding:
                                    MaterialStateProperty.all(EdgeInsets.zero),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        AppColors.primary),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                _showBottomModal();
                              },
                              child: Icon(
                                Icons.add,
                                color: AppColors.nearlyWhite,
                                size: 35,
                              ),
                            )),
                      ],
                    ),
            ),
            const VerticalSpacer(20),
          ]),
    );
  }
}
