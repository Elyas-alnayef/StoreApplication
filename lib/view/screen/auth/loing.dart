import 'package:flutter/material.dart';
import 'package:sotreapplication/core/constant/color.dart';

import '../../widget/auth/subtitle.dart';
import '../../widget/auth/textformfield.dart';
import '../../widget/auth/title.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign in",
          style: TextStyle(
              color: AppColors.subtitlecolor,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 16,
            ),
            authtitle(title: "Welcome Back"),
            const SizedBox(
              height: 24,
            ),
            authsubtitle(
              subtitle:
                  "Sign in with your email and password or continue with social media",
            ),
            const SizedBox(
              height: 65,
            ),
            loginTextField(
              hint: "Enter your email",
              lable: 'Email',
              suffixicon: const Icon(Icons.email_outlined),
            ),
            const SizedBox(
              height: 24,
            ),
            loginTextField(
              hint: "Enter your password",
              lable: 'Password',
              suffixicon: const Icon(Icons.lock_outline),
            ),
          ],
        ),
      ),
    );
  }
}
