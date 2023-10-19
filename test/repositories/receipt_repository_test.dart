import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:vimes_test/data/models/receipt_model.dart';
import 'package:vimes_test/data/providers/firestore_provider.dart';

class MockCollectionReference extends Mock implements CollectionReference {}

class MockDocumentReference extends Mock implements DocumentReference {}

void main() {
  group('Firestore Tests', () {
    test('uploadData should upload data to Firestore', () async {
      final mockCollectionReference = MockCollectionReference();
      final mockDocumentReference = MockDocumentReference();

      when(FirebaseFirestore.instance.collection('your_collection')).thenReturn(
          mockCollectionReference as CollectionReference<Map<String, dynamic>>);
      when(mockCollectionReference.add(any))
          .thenAnswer((_) => Future.value(mockDocumentReference));

      var receipt = ReceiptModel(
        division: '1',
        department: '1',
        receiptNumber: '123a',
        deliveryNumber: '123b',
        debit: 123,
        credit: 123,
        delivererName: 'binh',
        accordingTo: 'abc',
        of: 'bca',
        inputInStock: 'house',
        location: 'hn',
        receiptCreatedDate: '12/2/23',
        deliveredDate: '8/9/20',
        totalAmount: 'abc',
        numberOfOriginalDocumentsAttached: 'abc',
      );
      await FireStoreProvider.fireStoreProvider.createReceipt(receipt);

      verify(mockCollectionReference.add(receipt));
    });
  });
}
