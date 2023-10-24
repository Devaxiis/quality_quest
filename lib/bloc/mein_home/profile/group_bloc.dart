import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'group_event.dart';
part 'group_state.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  GroupBloc() : super(GroupInitial()) {
    on<GroupProfileEvent>(_groupprofile);
  }

  void _groupprofile(GroupProfileEvent event,Emitter emit){
    emit(GroupSuccess(event.index));
  }
}
