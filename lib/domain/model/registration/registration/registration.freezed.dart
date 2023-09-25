// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Registration _$RegistrationFromJson(Map<String, dynamic> json) {
  return _Registration.fromJson(json);
}

/// @nodoc
mixin _$Registration {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  int get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationCopyWith<Registration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationCopyWith<$Res> {
  factory $RegistrationCopyWith(
          Registration value, $Res Function(Registration) then) =
      _$RegistrationCopyWithImpl<$Res, Registration>;
  @useResult
  $Res call(
      {@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
      String name,
      String email,
      String password,
      int role});
}

/// @nodoc
class _$RegistrationCopyWithImpl<$Res, $Val extends Registration>
    implements $RegistrationCopyWith<$Res> {
  _$RegistrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationCopyWith<$Res>
    implements $RegistrationCopyWith<$Res> {
  factory _$$_RegistrationCopyWith(
          _$_Registration value, $Res Function(_$_Registration) then) =
      __$$_RegistrationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
      String name,
      String email,
      String password,
      int role});
}

/// @nodoc
class __$$_RegistrationCopyWithImpl<$Res>
    extends _$RegistrationCopyWithImpl<$Res, _$_Registration>
    implements _$$_RegistrationCopyWith<$Res> {
  __$$_RegistrationCopyWithImpl(
      _$_Registration _value, $Res Function(_$_Registration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? role = null,
  }) {
    return _then(_$_Registration(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Registration with DiagnosticableTreeMixin implements _Registration {
  const _$_Registration(
      {@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
      required this.name,
      required this.email,
      required this.password,
      required this.role});

  factory _$_Registration.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationFromJson(json);

  @override
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final int role;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Registration(name: $name, email: $email, password: $password, role: $role)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Registration'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('role', role));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Registration &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, password, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationCopyWith<_$_Registration> get copyWith =>
      __$$_RegistrationCopyWithImpl<_$_Registration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationToJson(
      this,
    );
  }
}

abstract class _Registration implements Registration {
  const factory _Registration(
      {@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
      required final String name,
      required final String email,
      required final String password,
      required final int role}) = _$_Registration;

  factory _Registration.fromJson(Map<String, dynamic> json) =
      _$_Registration.fromJson;

  @override
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  int get role;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationCopyWith<_$_Registration> get copyWith =>
      throw _privateConstructorUsedError;
}
