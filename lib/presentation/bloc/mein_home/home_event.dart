part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class MainHomeEvent extends HomeEvent{
  late int index;

  MainHomeEvent(this.index);
  @override
  List<Object?> get props => [index,];
}
