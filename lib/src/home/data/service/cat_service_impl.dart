import 'package:cats_app/src/home/data/service/cat_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CatServiceImpl implements CatService {
  final DocumentReference document = FirebaseFirestore.instance
      .collection('cats') //
      .doc('cats-list');

  @override
  Stream<DocumentSnapshot> getCats() {
    return document.snapshots();
  }
}
