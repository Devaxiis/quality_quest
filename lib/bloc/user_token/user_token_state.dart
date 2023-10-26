part of 'user_token_bloc.dart';

abstract class UserTokenState extends Equatable {
  const UserTokenState();
}

class UserTokenInitial extends UserTokenState {
  @override
  List<Object> get props => [];
}

class UserTokenLoading extends UserTokenState {
  @override
  List<Object> get props => [];
}

class UserTokenFailure extends UserTokenState {
  @override
  List<Object> get props => [];
}

class UserTokenSuccess extends UserTokenState {
  Map<String,Object?> data;

  UserTokenSuccess({required this.data});

  @override
  List<Object> get props => [];
}
