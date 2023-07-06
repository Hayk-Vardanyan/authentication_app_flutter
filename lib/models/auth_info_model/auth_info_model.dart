import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_model/user_model.dart';

part 'auth_info_model.freezed.dart';

part 'auth_info_model.g.dart';

@freezed
class AuthInfoModel with _$AuthInfoModel {
  factory AuthInfoModel({
    required UserModel user,
    required String accessToken,
  }) = _AuthInfoModel;

  factory AuthInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AuthInfoModelFromJson(json);
}
