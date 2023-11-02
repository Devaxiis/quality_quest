part of 'get_science_bloc.dart';

abstract class GetScienceState extends Equatable {
  const GetScienceState();
}

class GetScienceInitial extends GetScienceState {
  @override
  List<Object> get props => [];
}

class GetScienceLoading extends GetScienceState {
  @override
  List<Object> get props => [];
}

class GetScienceFailure extends GetScienceState {
  String message;

  GetScienceFailure(this.message);

  @override
  List<Object> get props => [message];
}

class GetScienceSuccess extends GetScienceState {
  final List<GetScienceModel> getScience;

  const GetScienceSuccess({
   required this.getScience,
});

  @override
  List<Object> get props => [getScience];
}
