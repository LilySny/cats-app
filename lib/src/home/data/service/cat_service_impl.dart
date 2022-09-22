import 'package:cats_app/src/home/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CatServiceImpl implements CatService {
  final CollectionReference collection;

  CatServiceImpl(this.collection);

  @override
  Future<List<CatModel>> getCats() async {
    List<CatModel> result = [];

    await collection.get().then(
      (res) {
        result = List<CatModel>.from(
          res.docs.map((x) {
            var data = x.data() as Map<String, dynamic>;

            CatModel.fromJson(data);
          }),
        ).toList();
      },
      onError: (e) => throw Exception('Error getting Cats collection'),
    );

    return result;
  }
}
