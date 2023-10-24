import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'package:quality_quest/data/network_service.dart';
import 'package:quality_quest/data/store.dart';
import 'package:quality_quest/domain/model/registration/sign_up_model/sign_up_model.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthSignUpEvent>(_signUp);
    on<AuthSignInEvent>(_signIn);
  }

  // #SignUp Bloc
  void _signUp(AuthSignUpEvent event, Emitter emit) async {
    // #loading
    emit(AuthSignUpLoadingState());

    final Map<String, Object?> data = {
      "firstname":event.firstname,
      "lastname": event.lastname,
      "password": event.password,
      "email":event.email,
    };


    // #method
    final result = await HttpService.methodSignUpPost(
        api: Api.apiSignUp, data: data);


    if(result){
      // UserSave.setUser(id:Random().nextInt(1000), firstname: event.data["firstname"].toString(), lastname: event.data["lastname"].toString(), email: event.data["email"].toString(), password: event.data["password"].toString());
    emit(AuthSignUpSuccessState());
    }else{
      emit(AuthSignUpFailureState());
    }
  }

  // #SignIn Bloc
  void _signIn(AuthSignInEvent event, Emitter emit) async {
    // #loading
    emit(AuthSignInLoadingState());

    // String response = UserSave.getUser().toString();
    // List<String> users = response.split(",");
    // List<String> haveUser = users.where((user) {
    //   return user[3] == event.data["email"].toString() &&
    //       user[4] == event.data["password"].toString();
    // }).toList();

    // #method
    final result = await HttpService.methodSignInPost(
        api: Api.apiSignIN, data: event.data);

    if (result) {
      emit(AuthSignUpSuccessState());
    } else {
      emit(AuthSignInFailureState());
    }




    // UserSave.setAccessUser(email: event.data["email"].toString(), password: event.data["password"].toString(),);
    // if(haveUser.isNotEmpty){
    //    emit(AuthSignInSuccessState());
    // }else{
    //   emit(AuthSignInFailureState());
    // }

  }
}
