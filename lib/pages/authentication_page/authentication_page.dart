import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled3/models/user_model/user_model.dart';
import 'package:untitled3/pages/authentication_page/widgets/tab_bar.dart';
import 'package:untitled3/pages/sign_in_page/sign_in_page.dart';
import 'package:untitled3/pages/sign_up_page/sign_up_page.dart';
import 'package:untitled3/router.gr.dart';
import 'package:untitled3/store/authentication_page_state/authentication_page_state.dart';
import 'package:untitled3/store/loading_state/loading_state.dart';
import 'package:untitled3/store/validation_state/validation_state.dart';
import 'package:untitled3/themes/app_colors.dart';
import 'package:untitled3/utils/assets.dart';
import 'package:untitled3/utils/color_utils.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled3/utils/storage_utils.dart';
import 'package:uuid/uuid.dart';

import '../../providers/screen_service.dart';
import '../../store/auth/auth_state.dart';

@RoutePage()
class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  void initState() {
    super.initState();
    signUpValidationState.setupValidations();
    logInValidationState.setupValidations();
  }

  PageController pageController = PageController();
  AuthenticationState authenticationState = AuthenticationState();
  LoadingState loadingState = LoadingState();
  ValidationState signUpValidationState = ValidationState();
  ValidationState logInValidationState = ValidationState();

  void navigate(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void onPageChanged(int index) {
    authenticationState.onTap(index);
  }

  Future<void> onSignUp() async {
    loadingState.startLoading();
    signUpValidationState.validateUserName(false);
    signUpValidationState.validateEmail(false);
    signUpValidationState.validatePassword(false);

    if (signUpValidationState.error.hasErrors) {
      loadingState.stopLoading();
      return;
    }

    UserModel? userModel =
        await StorageUtils.getUniqueUser(signUpValidationState.userName);
    if (userModel != null) {
      signUpValidationState.httpStatus = '422';
      loadingState.stopLoading();
      signUpValidationState.validateUserName(false);
      return;
    }

    loadingState.stopLoading();
    GetIt.I<AuthState>().onRegistration(
      userModel: UserModel(
        id: const Uuid().v4(),
        name: signUpValidationState.userName,
        password: signUpValidationState.password,
        email: signUpValidationState.email,
      ),
    );
    await router.push(const HomeRoute());
  }

  Future<void> onLogIn() async {
    loadingState.startLoading();
    logInValidationState.validateUserName(false);
    logInValidationState.validatePassword(false);
    UserModel? userModel =
        await StorageUtils.getUniqueUser(logInValidationState.userName);
    if (userModel == null) {
      loadingState.stopLoading();
      logInValidationState.httpStatus = '404';
      logInValidationState.validateUserName(false);
      return;
    } else if (userModel.password != logInValidationState.password) {
      loadingState.stopLoading();
      logInValidationState.httpStatus = '401';
      logInValidationState.validatePassword(false);
      return;
    }
    if (logInValidationState.error.hasErrors) {
      loadingState.stopLoading();
      return;
    }
    loadingState.stopLoading();
    await GetIt.I<AuthState>().onSignIn(
      userModel: UserModel(
        id: const Uuid().v4(),
        name: logInValidationState.userName,
        password: logInValidationState.password,
        email: userModel.email,
      ),
    );
    await router.push(const HomeRoute());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: brightnessColor(
          lightColor: AppColors.scaffoldBackgroundLight,
          darkColor: AppColors.scaffoldBackgroundDark,
          context: context,
        ),
        body: Stack(
          children: [
            Assets.backgroundImage.svg(
              fit: BoxFit.cover,
              color: brightnessColor(
                context: context,
              ),
            ),
            Positioned(
              top: 54,
              left: 24,
              child: Assets.logo.svg(),
            ),
            PageView(
              controller: pageController,
              onPageChanged: onPageChanged,
              children: [
                Observer(
                  builder: (context) {
                    return SignInPage(
                      username: logInValidationState.error.userName,
                      password: logInValidationState.error.password,
                      onUsernameChanged: logInValidationState.onUserNameChanged,
                      onPasswordChanged: logInValidationState.onPasswordChanged,
                    );
                  },
                ),
                Observer(
                  builder: (context) {
                    return SignUpPage(
                      username: signUpValidationState.error.userName,
                      email: signUpValidationState.error.email,
                      password: signUpValidationState.error.password,
                      onUsernameChanged:
                          signUpValidationState.onUserNameChanged,
                      onEmailChanged: signUpValidationState.onEmailChanged,
                      onPasswordChanged:
                          signUpValidationState.onPasswordChanged,
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height / 4,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Observer(
                  builder: (context) {
                    return AuthTabBar(
                      onTap: (int index) {
                        authenticationState.onTap(index);
                        navigate(index);
                      },
                      currentIndex: authenticationState.currentIndex,
                      onSignUp: loadingState.isLoading
                          ? null
                          : signUpValidationState.error.hasErrors
                              ? null
                              : onSignUp,
                      onLogIn: loadingState.isLoading
                          ? null
                          : logInValidationState.error.hasErrors
                              ? null
                              : onLogIn,
                    );
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 150,
              left: MediaQuery.of(context).size.width / 2 - 50,
              child: Text(
                'Forgot password?',
                style: TextStyle(
                  color: brightnessColor(
                    darkColor: Colors.white,
                    lightColor: AppColors.royalBlue,
                    context: context,
                  ),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
