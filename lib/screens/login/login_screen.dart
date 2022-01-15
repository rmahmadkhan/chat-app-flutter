import 'package:chat_app/screens/login/components/my_button.dart';
import 'package:chat_app/screens/login/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTextField(hint: 'Email', controller: _emailController),
              const SizedBox(height: 10),
              MyTextField(hint: 'Password', controller: _passwordController),
              const SizedBox(height: 10),
              MyButton(title: 'Login', onPressed: onPressLoginButton),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  void onPressLoginButton() {}
}
