// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logo_out.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogoModel _$LogoModelFromJson(Map<String, dynamic> json) {
  return _LogoModel.fromJson(json);
}

/// @nodoc
mixin _$LogoModel {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoModelCopyWith<LogoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoModelCopyWith<$Res> {
  factory $LogoModelCopyWith(LogoModel value, $Res Function(LogoModel) then) =
      _$LogoModelCopyWithImpl<$Res, LogoModel>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$LogoModelCopyWithImpl<$Res, $Val extends LogoModel>
    implements $LogoModelCopyWith<$Res> {
  _$LogoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogoModelCopyWith<$Res> implements $LogoModelCopyWith<$Res> {
  factory _$$_LogoModelCopyWith(
          _$_LogoModel value, $Res Function(_$_LogoModel) then) =
      __$$_LogoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$_LogoModelCopyWithImpl<$Res>
    extends _$LogoModelCopyWithImpl<$Res, _$_LogoModel>
    implements _$$_LogoModelCopyWith<$Res> {
  __$$_LogoModelCopyWithImpl(
      _$_LogoModel _value, $Res Function(_$_LogoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_LogoModel(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$_LogoModel implements _LogoModel {
  const _$_LogoModel({required this.accessToken, required this.refreshToken});

  factory _$_LogoModel.fromJson(Map<String, dynamic> json) =>
      _$$_LogoModelFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'LogoModel(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogoModel &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogoModelCopyWith<_$_LogoModel> get copyWith =>
      __$$_LogoModelCopyWithImpl<_$_LogoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogoModelToJson(
      this,
    );
  }
}

abstract class _LogoModel implements LogoModel {
  const factory _LogoModel(
      {required final String accessToken,
      required final String refreshToken}) = _$_LogoModel;

  factory _LogoModel.fromJson(Map<String, dynamic> json) =
      _$_LogoModel.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_LogoModelCopyWith<_$_LogoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
