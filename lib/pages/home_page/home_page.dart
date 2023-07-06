import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled3/router.gr.dart';
import 'package:untitled3/store/auth/auth_state.dart';
import 'package:untitled3/utils/color_utils.dart';

import '../../providers/screen_service.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brightnessColor(context: context),
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: const Text('Home Page'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GestureDetector(
              onTap: () {
                GetIt.I<AuthState>().logout();
                router.pushAndPopAll(const AuthenticationRoute());
              },
              child: const Icon(Icons.logout_outlined),
            ),
          ),
        ],
      ),
      body: Center(
        child: Observer(
          builder: (context) {
            return Text(
              GetIt.I<AuthState>().currentUser == null
                  ? 'some name'
                  : 'Hello ${GetIt.I<AuthState>().currentUser!.name}',
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
                color: Colors.indigo,
              ),
              // GetIt.I<AuthState>().currentUser!.name,
            );
          },
        ),
      ),
    );
  }
}
