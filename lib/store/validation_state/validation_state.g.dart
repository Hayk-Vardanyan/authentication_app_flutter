// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ValidationState on _ValidationState, Store {
  late final _$userNameAtom =
      Atom(name: '_ValidationState.userName', context: context);

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  late final _$httpStatusAtom =
      Atom(name: '_ValidationState.httpStatus', context: context);

  @override
  String get httpStatus {
    _$httpStatusAtom.reportRead();
    return super.httpStatus;
  }

  @override
  set httpStatus(String value) {
    _$httpStatusAtom.reportWrite(value, super.httpStatus, () {
      super.httpStatus = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_ValidationState.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_ValidationState.password', context: context);

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$_ValidationStateActionController =
      ActionController(name: '_ValidationState', context: context);

  @override
  dynamic onUserNameChanged(dynamic newUsername) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.onUserNameChanged');
    try {
      return super.onUserNameChanged(newUsername);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onEmailChanged(dynamic newEmail) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.onEmailChanged');
    try {
      return super.onEmailChanged(newEmail);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onPasswordChanged(dynamic newPassword) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.onPasswordChanged');
    try {
      return super.onPasswordChanged(newPassword);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateUserName(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validateUserName');
    try {
      return super.validateUserName(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validateEmail');
    try {
      return super.validateEmail(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(dynamic _) {
    final _$actionInfo = _$_ValidationStateActionController.startAction(
        name: '_ValidationState.validatePassword');
    try {
      return super.validatePassword(_);
    } finally {
      _$_ValidationStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userName: ${userName},
httpStatus: ${httpStatus},
email: ${email},
password: ${password}
    ''';
  }
}

mixin _$LoginStateErrors on _LoginStateErrors, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_LoginStateErrors.hasErrors'))
          .value;

  late final _$userNameAtom =
      Atom(name: '_LoginStateErrors.userName', context: context);

  @override
  String? get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String? value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_LoginStateErrors.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_LoginStateErrors.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  @override
  String toString() {
    return '''
userName: ${userName},
email: ${email},
password: ${password},
hasErrors: ${hasErrors}
    ''';
  }
}
