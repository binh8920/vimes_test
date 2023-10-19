import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:vimes_test/data/models/receipt_model.dart';

class FireStoreProvider {
  FireStoreProvider._();
  static final FireStoreProvider fireStoreProvider = FireStoreProvider._();
  final _db = FirebaseFirestore.instance;

  Future<void> createReceipt(ReceiptModel receipt) async {
    await _db.collection('receipts').doc().set(receipt.toJson());
  }
}
