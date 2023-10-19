import 'package:get/get.dart';

class InputProductInfoModel {
  //product info
  final RxString productOrder = RxString('');
  final RxString productName = RxString('');
  final RxString code = RxString('');
  final RxString unit = RxString('');
  final RxString accordingToDocumentQuantity = RxString('');
  final RxString actuallyImportedQuantity = RxString('');
  final RxString unitPrice = RxString('');
  final RxString amount = RxString('');

  String? validateString(String? value) {
    if (value!.isEmpty) {
      return 'Thông tin này không được để trống';
    }
    return null;
  }

  String? validateNumber(String? value) {
    if (value!.isEmpty) {
      return 'Thông tin này không được để trống';
    }
    if (int.parse(value) == 0) {
      return 'Giá trị phải lớn hơn 0';
    }
    if (double.parse(value) == 0) {
      return 'Giá trị phải lớn hơn 0';
    }
    return null;
  }
}
