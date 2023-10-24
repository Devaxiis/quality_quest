part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

// #SignUp
class AuthSignUpEvent extends AuthEvent {
  late String firstname;
  late String lastname;
  late String password;
  late String email;

  AuthSignUpEvent({
    required this.firstname,
    required this.lastname,
    required this.password,
    required this.email,
  });

  @override
  List<Object?> get props => [firstname,lastname,password,email];
}

// #SignIn
class AuthSignInEvent extends AuthEvent {
  Map<String, Object?> data;

  AuthSignInEvent({
    required this.data,
  });

  @override
  List<Object?> get props => [data];
}
