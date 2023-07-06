import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/widgets/input_text_field.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  final String? username;
  final String? email;
  final String? password;
  final Function(String) onUsernameChanged;
  final Function(String) onEmailChanged;
  final Function(String) onPasswordChanged;

  const SignUpPage({
    super.key,
    required this.username,
    required this.email,
    required this.password,
    required this.onUsernameChanged,
    required this.onEmailChanged,
    required this.onPasswordChanged,
  });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: InputTextField(
              controller: nameController,
              focusNode: nameFocusNode,
              label: 'Username',
              // error: validationState.error.userName,
              error: widget.username,
              onChanged: widget.onUsernameChanged,
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: InputTextField(
              controller: emailController,
              focusNode: emailFocusNode,
              label: 'Email',
              // error: validationState.error.email,
              error: widget.email,
              onChanged: widget.onEmailChanged,
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: InputTextField(
              controller: passwordController,
              focusNode: passwordFocusNode,
              label: 'Password',
              // error: validationState.error.password,
              error: widget.password,
              onChanged: widget.onPasswordChanged,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
