import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/params/aps.dart';
import 'package:quality_quest/data/network_service.dart';
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
    emit(AuthSignUpLoadingState());
    final result = await HttpService.methodSignUpPost(api: Api.apiSignUp, data: event.data);
    if(result){
      SignUp user = SignUp(
          id:Random().nextInt(1000),
          firstname: event.data["firstname"].toString(),
          lastname: event.data["lastname"].toString(),
          password: event.data["password"].toString(),
          email: event.data["email"].toString(),
      );
      auth.storeData(user);
    emit(AuthSignUpSuccessState());
    }else{
      emit(AuthSignUpFailureState());
    }
  }

  // #SignIn Bloc
  void _signIn(AuthSignInEvent event,Emitter emit)async{
    emit(AuthSignInLoadingState());

    final result = await HttpService.methodSignInPost(api: Api.apiSignUp, data: event.data);
      if(result){
        List<Map<String, Object?>> response = auth.getData;
        List<SignIn> users = response.map((e) => SignIn.fromJson(e)).toList();
        List<SignIn> haveUser = users.where((user) {
          return user.email == event.data["email"].toString() &&
              user.password == event.data["password"].toString();
        }).toList();
        auth.saveUser(haveUser[0]);
        if(haveUser.isEmpty){

        }else{
          emit(AuthSignUpSuccessState());
        }
      }else{
        emit(AuthSignInFailureState());
      }
  }

}
