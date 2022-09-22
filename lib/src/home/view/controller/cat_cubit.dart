import 'package:cats_app/src/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatCubit extends Cubit<CatState> {
  CatCubit({required this.service}) : super(InitialState()) {
    getCats();
  }

  final CatService service;

  void getCats() async {
    try {
      emit(LoadingState());
      final cats = await service.getCats();
      emit(LoadedState(cats));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
