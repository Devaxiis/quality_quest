import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class Login with _$Login{
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Login({
    required String email,
    required String password,
  })=_Login;


  factory Login.fromJson(Map<String,dynamic> json) => _$LoginFromJson(json);
}