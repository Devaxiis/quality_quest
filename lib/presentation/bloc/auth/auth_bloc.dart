import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'package:quality_quest/core/service_locator.dart';
import 'package:quality_quest/data/network_service.dart';
import 'package:quality_quest/domain/repository/repository.dart';

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
    final result = await (repository as RepositoryImplementation).network.methodSignUpPost(
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


    // #method
    final result = await (repository as RepositoryImplementation).network.methodSignInPost(
        api: Api.apiSignIN, data: event.data);

    if (result) {
      emit(AuthSignUpSuccessState());
    } else {
      emit(AuthSignInFailureState());
    }


  }
}
