import 'package:untitled3/models/user_model/user_model.dart';

import '../models/auth_info_model/auth_info_model.dart';

class AuthRepository {
  static Future<AuthInfoModel> signUp({
    required UserModel userModel,
  }) async {
    /// the code that will actually make sense
    // final response = await dio.post(
    //   '/auth/sign-up',
    //   data: signUpModel.toJson(),
    // );
    // return AuthInfoModel.fromJson(response.data);

    // faking the call via repository
    // in real cases te token would ne provided by backend
    final authInfo = AuthInfoModel(
      user: userModel,
      accessToken: 'token',
    );
    return authInfo;
  }

  static Future<AuthInfoModel> signIn({
    required UserModel userModel,
  }) async {
    /// the code that will actually make sense
    // final response = await dio.post(
    //   '/auth/sign-up',
    //   data: signUpModel.toJson(),
    // );
    // return AuthInfoModel.fromJson(response.data);

    // faking the call via repository
    // in real cases te token would ne provided by backend
    final authInfo = AuthInfoModel(
      user: userModel,
      accessToken: 'token',
    );
    return authInfo;
  }
}
