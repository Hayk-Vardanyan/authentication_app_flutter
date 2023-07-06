import 'package:mobx/mobx.dart';
import '../../constants/regexp.dart';

part 'validation_state.g.dart';

class ValidationState = _ValidationState with _$ValidationState;

abstract class _ValidationState with Store {
  final error = LoginStateErrors();

  @observable
  String userName = '';

  @observable
  String httpStatus = '';

  @observable
  String email = '';

  @observable
  String password = '';

  List<ReactionDisposer>? _disposers;

  void setupValidations() {
    if (_disposers != null) {
      return;
    }
    _disposers = [
      reaction((_) => email, validateEmail),
      reaction((_) => password, validatePassword),
      reaction((_) => userName, validateUserName)
    ];
  }

  void dispose() {
    if (_disposers == null) {
      return;
    }
    for (final d in _disposers!) {
      d();
    }
  }

  @action
  onUserNameChanged(newUsername) {
    userName = newUsername;
    httpStatus = '';
  }

  @action
  onEmailChanged(newEmail) {
    email = newEmail;
    httpStatus = '';
  }

  @action
  onPasswordChanged(newPassword) {
    password = newPassword;
    httpStatus = '';
  }

  @action
  void validateUserName(_) {
    if (userName.isEmpty) {
      error.userName = 'Username can not be empty';
    } else if (httpStatus == '404') {
      error.userName = 'Username does not exist';
    } else if (httpStatus == '422') {
      error.userName = 'Username is already taken';
    } else {
      httpStatus = '';
      error.userName = null;
    }
  }

  @action
  void validateEmail(_) {
    if (email.isEmpty) {
      error.email = 'Email can not be empty';
    } else if (!email.contains(RegExp(emailRegExp))) {
      error.email = 'Invalid email';
      return;
    } else {
      error.email = null;
    }
  }

  @action
  void validatePassword(_) {
    if (password.isEmpty) {
      error.password = 'Password can not be empty';
    } else if (password.length < 6) {
      error.password = 'Password must contain at least 6 characters';
      return;
    } else if (httpStatus == '401') {
      error.password = 'Incorrect password';
      return;
    } else {
      httpStatus = '';
      error.password = null;
    }
  }
}

class LoginStateErrors = _LoginStateErrors with _$LoginStateErrors;

abstract class _LoginStateErrors with Store {
  @observable
  String? userName;

  @observable
  String? email;

  @observable
  String? password;

  @computed
  bool get hasErrors => userName != null || email != null || password != null;
}
