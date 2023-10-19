import 'package:get/get.dart';

class InputGeneralInfoModel {
  //general info
  final RxString division = RxString('');
  final RxString department = RxString('');
  final RxString receiptNumber = RxString('');
  final RxString deliveryNumber = RxString('');
  final RxString debit = RxString('');
  final RxString credit = RxString('');
  final RxString delivererName = RxString('');
  final RxString accordingTo = RxString('');
  final RxString of = RxString('');
  final RxString inputInStock = RxString('');
  final RxString location = RxString('');
  final RxString totalAmount = RxString('');
  final RxString numberOfOriginalDocumentsAttached = RxString('');
  final RxString receiptCreatedDate = ''.obs;
  final RxString deliveredDate = ''.obs;

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
    return null;
  }
}
