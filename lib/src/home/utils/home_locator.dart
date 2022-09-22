import 'package:cats_app/src/core/service_locator.dart';
import 'package:cats_app/src/home/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void setHomeModuleDependencies() {
  final CollectionReference document =
      FirebaseFirestore.instance.collection('Cats');

  getIt.registerLazySingleton<CatService>(() => CatServiceImpl(document));

  getIt.registerLazySingleton<CatCubit>(
    () => CatCubit(
      service: getIt<CatService>(),
    ),
  );
}
