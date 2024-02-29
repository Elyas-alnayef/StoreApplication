import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/color.dart';
import 'package:sotreapplication/view/widget/auth/signuplogo.dart';
import '../../../controller/auth/signupcontroller.dart';
import '../../widget/auth/button.dart';
import '../../widget/auth/subtitle.dart';
import '../../widget/auth/textformfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    Signupcontrollerimp controller = Get.put(Signupcontrollerimp());
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
              signuplogo(),
              const SizedBox(
                height: 40,
              ),
              authsubtitle(
                subtitle: "Create your own account and start shopping",
              ),
              const SizedBox(
                height: 24,
              ),
              loginTextField(
                controller: controller.usernamecontroller,
                hint: "Enter your username",
                lable: 'Username',
                suffixicon: const Icon(Icons.person_outlined),
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
                controller: controller.phonecontroller,
                hint: "Enter your phone number",
                lable: 'Phone',
                suffixicon: const Icon(Icons.phone_outlined),
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
              const SizedBox(
                height: 24,
              ),
              login(
                  fun: () {
                    controller.goTocheckemail();
                  },
                  name: 'Sign Up'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Do you have account ? ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      controller.goTologin();
                    },
                    child: const Text("Login",
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
