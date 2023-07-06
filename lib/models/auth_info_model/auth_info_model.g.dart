// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthInfoModel _$$_AuthInfoModelFromJson(Map<String, dynamic> json) =>
    _$_AuthInfoModel(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$_AuthInfoModelToJson(_$_AuthInfoModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'accessToken': instance.accessToken,
    };
