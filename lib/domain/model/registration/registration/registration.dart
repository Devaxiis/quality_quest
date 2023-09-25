import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'registration.freezed.dart';
part 'registration.g.dart';

@freezed
class Registration with _$Registration {

  const factory Registration({
   @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
             required String name,
             required String email,
             required String password,
             required int role,
  })=_Registration;

  factory Registration.fromJson(Map<String, dynamic> json) => _$RegistrationFromJson(json);
  
}

