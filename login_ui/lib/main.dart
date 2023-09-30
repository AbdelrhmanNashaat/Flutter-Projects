import 'package:flutter/material.dart';
import 'package:login_page_ui/component/button.dart';
import 'package:login_page_ui/component/square_title.dart';

import 'component/TextFiled.dart';

void main() {
  runApp(LoginUi());
}

class LoginUi extends StatelessWidget {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            children: [
              const Spacer(
                flex: 2,
              ),
              const Icon(
                Icons.lock,
                size: 140,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              textField(
                controller: userNameController,
                hintText: 'User Name',
                obscureText: false,
                icon: const Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 34,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              textField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                icon: const Icon(
                  Icons.password,
                  color: Colors.black,
                  size: 34,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              const button(),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      'Or Continue With',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTitle(imagePath: 'assets/google.png'),
                  SizedBox(
                    width: 20,
                  ),
                  SquareTitle(imagePath: 'assets/apple.png'),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const Text(
                    ' Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
