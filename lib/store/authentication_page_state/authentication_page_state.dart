import 'package:mobx/mobx.dart';

part 'authentication_page_state.g.dart';

class AuthenticationState = _AuthenticationState with _$AuthenticationState;

abstract class _AuthenticationState with Store {
  @observable
  int currentIndex = 0;

  @action
  onTap(int index) {
    currentIndex = index;
  }
}
