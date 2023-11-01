part of 'user_token_bloc.dart';

abstract class UserTokenEvent extends Equatable {
  const UserTokenEvent();
}

class UserTokenGetEvent extends UserTokenEvent{

  @override
  List<Object?> get props => throw UnimplementedError();
}