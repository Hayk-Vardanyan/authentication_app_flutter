import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../widgets/input_text_field.dart';

@RoutePage()
class SignInPage extends StatefulWidget {
  final String? username;
  final String? password;
  final Function(String) onUsernameChanged;
  final Function(String) onPasswordChanged;

  const SignInPage({
    super.key,
    required this.username,
    required this.password,
    required this.onUsernameChanged,
    required this.onPasswordChanged,
  });

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>
    with AutomaticKeepAliveClientMixin {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode nameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 65),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: InputTextField(
              controller: emailController,
              focusNode: emailFocusNode,
              label: 'Username',
              error: widget.username,
              onChanged: widget.onUsernameChanged,
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: InputTextField(
              controller: passwordController,
              focusNode: passwordFocusNode,
              label: 'Password',
              error: widget.password,
              onChanged: widget.onPasswordChanged,
            ),
          ),
        ],
      ),
    );
  }
}
