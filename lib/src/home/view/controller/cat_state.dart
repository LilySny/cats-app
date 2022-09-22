import 'package:cats_app/src/home/home.dart';
import 'package:equatable/equatable.dart';

abstract class CatState extends Equatable {}

class InitialState extends CatState {
  @override
  List<Object> get props => [];
}

class LoadingState extends CatState {
  @override
  List<Object> get props => [];
}

class LoadedState extends CatState {
  LoadedState(this.cats);

  final List<CatModel> cats;

  @override
  List<Object> get props => [cats];
}

class ErrorState extends CatState {
  @override
  List<Object> get props => [];
}
