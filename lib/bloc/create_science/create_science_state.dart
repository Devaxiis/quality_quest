part of 'create_science_bloc.dart';

abstract class CreateScienceState extends Equatable {
  const CreateScienceState();
}

class CreateScienceInitial extends CreateScienceState {
  @override
  List<Object> get props => [];
}

class CreateScienceLoading extends CreateScienceState {
  @override
  List<Object> get props => [];
}

class CreateScienceFailure extends CreateScienceState {
  @override
  List<Object> get props => [];
}

class CreateScienceSuccess extends CreateScienceState {
  @override
  List<Object> get props => [];
}
