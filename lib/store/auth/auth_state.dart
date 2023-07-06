import 'package:mobx/mobx.dart';

import '../../models/auth_info_model/auth_info_model.dart';
import '../../models/user_model/user_model.dart';
import '../../repositories/auth_repository.dart';
import '../../utils/storage_utils.dart';

part 'auth_state.g.dart';

class AuthState = _AuthState with _$AuthState;

abstract class _AuthState with Store {
  @observable
  UserModel? _currentUser;

  @observable
  String? accessToken;

  @computed
  UserModel? get currentUser => _currentUser;

  @computed
  set currentUser(UserModel? user) {
    _currentUser = user;
  }

  @action
  Future<void> setCurrentUser(UserModel user) async {
    _currentUser = user;
    await StorageUtils.setUser(user);
  }

  @action
  Future<void> getCurrentUser() async {
    currentUser = await StorageUtils.getUser();
  }

  @action
  Future<void> setAuthInfo({
    required AuthInfoModel authInfo,
    bool setUser = false,
  }) async {
    final authToken = authInfo.accessToken;
    final user = authInfo.user;
    accessToken = authInfo.accessToken;
    await StorageUtils.setAccessToken(authToken);
    await setCurrentUser(user);
    if (setUser) {
      await StorageUtils.setUniqueUser(user);
    }
  }

  @action
  Future<void> onRegistration({
    required UserModel userModel,
  }) async {
    final authInfo = await AuthRepository.signUp(
      userModel: userModel,
    );
    await setAuthInfo(authInfo: authInfo, setUser: true);
  }

  @action
  Future<void> onSignIn({
    required UserModel userModel,
  }) async {
    final authInfo = await AuthRepository.signIn(
      userModel: userModel,
    );
    await setAuthInfo(authInfo: authInfo);
  }

  @action
  Future<void> logout() async {
    await StorageUtils.removeAccessToken();
  }
}
