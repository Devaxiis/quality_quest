part of 'get_science_bloc.dart';

abstract class GetScienceEvent extends Equatable {
  const GetScienceEvent();
}


class GetAllScience extends GetScienceEvent{
  String scienceID;

  GetAllScience({required this.scienceID});

  @override
  List<Object?> get props => [scienceID];
}
