import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/color.dart';
import '../../../controller/auth/logincontroller.dart';
import '../../../core/constant/imageassets.dart';
import '../../widget/auth/button.dart';
import '../../widget/auth/logo.dart';
import '../../widget/auth/subtitle.dart';
import '../../widget/auth/textformfield.dart';
import '../../widget/auth/title.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Logincontrollerimp controller = Get.put(Logincontrollerimp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              logo(),
              const SizedBox(
                height: 40,
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
                height: 24,
              ),
              loginTextField(
                controller: controller.emailcontroller,
                hint: "Enter your email",
                lable: 'Email',
                suffixicon: const Icon(Icons.email_outlined),
              ),
              const SizedBox(
                height: 24,
              ),
              loginTextField(
                controller: controller.passwordcontroller,
                hint: "Enter your password",
                lable: 'Password',
                suffixicon: const Icon(Icons.lock_outline),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                child: InkWell(
                  onTap: () {
                    controller.goToforgetpassword();
                  },
                  child: const Text(
                    "forget your password ? ",
                    textAlign: TextAlign.end,
                    style:
                        TextStyle(fontSize: 12, color: AppColors.subtitlecolor),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              login(fun: () {}, name: 'Login'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have account ? ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.goToSignup();
                    },
                    child: const Text("Sign Up",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 16, color: AppColors.primaryColor)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
