
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'package:quality_quest/data/network_service.dart';
import 'package:quality_quest/data/store.dart';
import 'package:quality_quest/domain/model/registration/sign_up_model/sign_up_model.dart';
import 'package:quality_quest/main.dart';


import '../../domain/model/registration/sign_in_model/sign_in_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthSignUpEvent>(_signUp);
    on<AuthSignInEvent>(_signIn);
  }

  // #SignUp Bloc
  void _signUp(AuthSignUpEvent event,Emitter emit)async{
    // #loading
    emit(AuthSignUpLoadingState());

    // #method
    final result = await HttpService.methodSignUpPost(api: Api.apiSignUp,data: event.data);

    if(result){
      SignUp user = SignUp(
          id:Random().nextInt(1000) ,
          firstname: event.data["firstname"].toString(),
          lastname: event.data["lastname"].toString(),
          password: event.data["password"].toString(),
          email: event.data["email"].toString(),
      );
    emit(AuthSignUpSuccessState());
    }else{
      emit(AuthSignUpFailureState());
    }
  }

  // #SignIn Bloc
  void _signIn(AuthSignInEvent event, Emitter emit)async{
    // #loading
    emit(AuthSignInLoadingState());

    // #method
    final result = await HttpService.methodSignInPost(api: Api.apiSignIN, data: event.data);

    if(result){
        emit(AuthSignUpSuccessState());
      }else{
        emit(AuthSignInFailureState());
      }

    String response = UserSave.getUser() as String ;
    List<String> users = response.split(",");
    List<String> haveUser = users.where((user) {
      return user[0] == event.data["email"].toString() &&
          user[1] == event.data["password"].toString();
    }).toList();

    UserSave.setUser(event.data["email"].toString(), event.data["password"].toString());
    if(haveUser.isNotEmpty){
       emit(AuthSignInSuccessState());
    }else{
      emit(AuthSignInFailureState());
    }
  }

}
