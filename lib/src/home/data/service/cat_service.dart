import 'package:cats_app/src/home/home.dart';

abstract class CatService {
  Future<List<CatModel>> getCats();
}
