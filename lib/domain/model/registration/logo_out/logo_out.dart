import 'package:freezed_annotation/freezed_annotation.dart';

part 'logo_out.freezed.dart';
part 'logo_out.g.dart';

@freezed
class LogoModel with _$LogoModel{
  @JsonSerializable(explicitToJson: true,fieldRename: FieldRename.snake)
  const factory LogoModel({
    required String accessToken,
    required String refreshToken,
  })= _LogoModel;
  factory LogoModel.fromJson(Map<String,Object?>json)=> _$LogoModelFromJson(json);
}