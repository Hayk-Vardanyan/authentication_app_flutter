// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthState on _AuthState, Store {
  Computed<UserModel?>? _$currentUserComputed;

  @override
  UserModel? get currentUser =>
      (_$currentUserComputed ??= Computed<UserModel?>(() => super.currentUser,
              name: '_AuthState.currentUser'))
          .value;

  late final _$_currentUserAtom =
      Atom(name: '_AuthState._currentUser', context: context);

  @override
  UserModel? get _currentUser {
    _$_currentUserAtom.reportRead();
    return super._currentUser;
  }

  @override
  set _currentUser(UserModel? value) {
    _$_currentUserAtom.reportWrite(value, super._currentUser, () {
      super._currentUser = value;
    });
  }

  late final _$accessTokenAtom =
      Atom(name: '_AuthState.accessToken', context: context);

  @override
  String? get accessToken {
    _$accessTokenAtom.reportRead();
    return super.accessToken;
  }

  @override
  set accessToken(String? value) {
    _$accessTokenAtom.reportWrite(value, super.accessToken, () {
      super.accessToken = value;
    });
  }

  late final _$setCurrentUserAsyncAction =
      AsyncAction('_AuthState.setCurrentUser', context: context);

  @override
  Future<void> setCurrentUser(UserModel user) {
    return _$setCurrentUserAsyncAction.run(() => super.setCurrentUser(user));
  }

  late final _$setAuthInfoAsyncAction =
      AsyncAction('_AuthState.setAuthInfo', context: context);

  @override
  Future<void> setAuthInfo(
      {required AuthInfoModel authInfo, bool setUser = false}) {
    return _$setAuthInfoAsyncAction
        .run(() => super.setAuthInfo(authInfo: authInfo, setUser: setUser));
  }

  late final _$onRegistrationAsyncAction =
      AsyncAction('_AuthState.onRegistration', context: context);

  @override
  Future<void> onRegistration({required UserModel userModel}) {
    return _$onRegistrationAsyncAction
        .run(() => super.onRegistration(userModel: userModel));
  }

  late final _$onSignInAsyncAction =
      AsyncAction('_AuthState.onSignIn', context: context);

  @override
  Future<void> onSignIn({required UserModel userModel}) {
    return _$onSignInAsyncAction
        .run(() => super.onSignIn(userModel: userModel));
  }

  late final _$logoutAsyncAction =
      AsyncAction('_AuthState.logout', context: context);

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  @override
  String toString() {
    return '''
accessToken: ${accessToken},
currentUser: ${currentUser}
    ''';
  }
}
