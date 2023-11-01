part of 'science_value_bloc.dart';

abstract class ScienceValueState extends Equatable {
  const ScienceValueState();
}

class ScienceValueInitial extends ScienceValueState {
  @override
  List<Object> get props => [];
}

class ScienceValueLoading extends ScienceValueState {
  @override
  List<Object> get props => [];
}

class ScienceValueFailure extends ScienceValueState {
  @override
  List<Object> get props => [];
}

class ScienceValueSuccess extends ScienceValueState {
  @override
  List<Object> get props => [];
}
