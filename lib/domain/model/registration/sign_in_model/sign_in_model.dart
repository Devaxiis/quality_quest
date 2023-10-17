import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_model.freezed.dart';
part 'sign_in_model.g.dart';

@freezed
class SignIn with _$SignIn{
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory SignIn({
    required String password,
    required String email,
  })= _SignIn;
  factory SignIn.fromJson(Map<String,Object?>json)=> _$SignInFromJson(json);
}