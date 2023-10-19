import "package:vimes_test/data/models/receipt_model.dart";
import "package:vimes_test/data/providers/firestore_provider.dart";

class ReceiptRepository {
  static Future<void> saveReceiptToDB(ReceiptModel receipt) async {
    await FireStoreProvider.fireStoreProvider.createReceipt(receipt);
  }
}
