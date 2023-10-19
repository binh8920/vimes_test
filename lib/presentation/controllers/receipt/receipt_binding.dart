import 'package:get/get.dart';
import 'package:vimes_test/presentation/controllers/receipt/receipt_controller.dart';

class ReceiptBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ReceiptController>(ReceiptController(), permanent: true);
    //Get.put<HomeController>(HomeController(), permanent: true);
  }
}
