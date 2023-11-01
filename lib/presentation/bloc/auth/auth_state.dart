part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthSignUpLoadingState extends AuthState {
  @override
  List<Object> get props => [];
}


class AuthSignUpSuccessState extends AuthState {
  @override
  List<Object> get props => [];
}


class AuthSignUpFailureState extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthSignInLoadingState extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthSignInSuccessState extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthSignInFailureState extends AuthState {
  @override
  List<Object> get props => [];
}
