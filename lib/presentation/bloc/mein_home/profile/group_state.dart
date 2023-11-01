part of 'group_bloc.dart';

abstract class GroupState extends Equatable {
  const GroupState();
}

class GroupInitial extends GroupState {
  @override
  List<Object> get props => [];
}

class GroupSuccess extends GroupState {
  late int index;
  GroupSuccess(this.index);
  @override
  List<Object> get props => [index];
}