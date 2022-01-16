import 'package:chat_app/screens/login/components/login_button.dart';
import 'package:chat_app/screens/signup/signup_screen.dart';
import 'package:chat_app/widgets/my_text_field.dart';
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
              const Text(
                'Chat Demo',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              MyTextField(hint: 'Email', controller: _emailController),
              const SizedBox(height: 10),
              MyTextField(
                hint: 'Password',
                controller: _passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              LoginButton(
                emailController: _emailController,
                passwordController: _passwordController,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('New to the app?'),
                  TextButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()),
                    ),
                    child: const Text('Signup'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
