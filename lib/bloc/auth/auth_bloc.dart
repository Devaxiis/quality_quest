import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/params/aps.dart';
import 'package:quality_quest/data/network_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthSignUpEvent>(_signUp);
  }

  void _signUp(AuthSignUpEvent event,Emitter emit)async{
    emit(AuthSignUpLoadingState());
    final result = await HttpService.methodSignUpPost(api: Api.apiSignUp, data: event.data);
    if(result){
    emit(AuthSignUpSuccessState());
    }
  }

}
