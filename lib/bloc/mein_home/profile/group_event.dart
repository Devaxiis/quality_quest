part of 'group_bloc.dart';

abstract class GroupEvent extends Equatable {
  const GroupEvent();
}

class GroupProfileEvent extends GroupEvent{
  late int index;

  GroupProfileEvent(this.index);
  @override
  List<Object?> get props => [index,];
}