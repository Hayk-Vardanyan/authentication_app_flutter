import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled3/router.gr.dart';
import 'package:untitled3/store/auth/auth_state.dart';

import '../../mixins/after_layout_mixin.dart';
import '../../providers/screen_service.dart';
import '../../utils/assets.dart';
import '../../utils/storage_utils.dart';

@RoutePage()
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage>
    with AfterLayoutMixin {
  @override
  Future afterFirstLayout(BuildContext context) async {
    await checkSession();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Center(
        child: Image.asset(
          Assets.splashScreen,
          fit: BoxFit.fitHeight,
          width: double.infinity,
          // height: double.infinity,
        ),
      ),
    );
  }

  Future<void> checkSession() async {
    // await StorageUtils.clear();

    // checking if user is already signed in
    final token = await StorageUtils.getAccessToken();
    // final _token = await StorageUtils.getString(Preferences.authToken);

    // await Future.delayed(const Duration(milliseconds: 800));
    // if yes, there is no need to sign in again
    if (token != null) {
      await GetIt.I<AuthState>().getCurrentUser();
      await router.push(const HomeRoute());
      // Navigator.push(context, DashBoardPage());
    } else {
      await router.pushAndPopAll(
        const AuthenticationRoute(),
      );
    }
  }
}
