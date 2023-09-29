import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_model.freezed.dart';
part 'sign_up_model.g.dart';

@freezed
class SignUp with _$SignUp{
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory SignUp({

    required String firstname,
    required String lastname,
    required String password,
    required String email,

  })= _SignUp;

  factory SignUp.fromJson(Map<String,Object?>json)=> _$SignUpFromJson(json);

}