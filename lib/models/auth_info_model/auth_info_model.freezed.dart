// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthInfoModel _$AuthInfoModelFromJson(Map<String, dynamic> json) {
  return _AuthInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AuthInfoModel {
  UserModel get user => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthInfoModelCopyWith<AuthInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoModelCopyWith<$Res> {
  factory $AuthInfoModelCopyWith(
          AuthInfoModel value, $Res Function(AuthInfoModel) then) =
      _$AuthInfoModelCopyWithImpl<$Res, AuthInfoModel>;
  @useResult
  $Res call({UserModel user, String accessToken});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthInfoModelCopyWithImpl<$Res, $Val extends AuthInfoModel>
    implements $AuthInfoModelCopyWith<$Res> {
  _$AuthInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthInfoModelCopyWith<$Res>
    implements $AuthInfoModelCopyWith<$Res> {
  factory _$$_AuthInfoModelCopyWith(
          _$_AuthInfoModel value, $Res Function(_$_AuthInfoModel) then) =
      __$$_AuthInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user, String accessToken});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthInfoModelCopyWithImpl<$Res>
    extends _$AuthInfoModelCopyWithImpl<$Res, _$_AuthInfoModel>
    implements _$$_AuthInfoModelCopyWith<$Res> {
  __$$_AuthInfoModelCopyWithImpl(
      _$_AuthInfoModel _value, $Res Function(_$_AuthInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? accessToken = null,
  }) {
    return _then(_$_AuthInfoModel(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthInfoModel implements _AuthInfoModel {
  _$_AuthInfoModel({required this.user, required this.accessToken});

  factory _$_AuthInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthInfoModelFromJson(json);

  @override
  final UserModel user;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthInfoModel(user: $user, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthInfoModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthInfoModelCopyWith<_$_AuthInfoModel> get copyWith =>
      __$$_AuthInfoModelCopyWithImpl<_$_AuthInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthInfoModelToJson(
      this,
    );
  }
}

abstract class _AuthInfoModel implements AuthInfoModel {
  factory _AuthInfoModel(
      {required final UserModel user,
      required final String accessToken}) = _$_AuthInfoModel;

  factory _AuthInfoModel.fromJson(Map<String, dynamic> json) =
      _$_AuthInfoModel.fromJson;

  @override
  UserModel get user;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthInfoModelCopyWith<_$_AuthInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
