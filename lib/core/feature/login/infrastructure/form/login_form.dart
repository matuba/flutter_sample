import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginForm({super.key});

  void onLoginPressed(BuildContext context) {
    final username = usernameController.text;
    final password = passwordController.text;

    // 認証ロジックを呼び出す
    print('Login attempt: $username / $password');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UsernameField(controller: usernameController),
          const SizedBox(height: 16),
          PasswordField(controller: passwordController),
          const SizedBox(height: 16),
          LoginButton(onPressed: () => onLoginPressed(context)),
        ],
      ),
    );
  }
}
