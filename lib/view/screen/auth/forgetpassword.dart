import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/forgetpasswordcontroller.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/button.dart';
import '../../widget/auth/subtitle.dart';
import '../../widget/auth/textformfield.dart';
import '../../widget/auth/title.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    Forgetpasswordcontrollerimp controller =
        Get.put(Forgetpasswordcontrollerimp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: controller.formkey,
            child: Column(
              children: [
                authtitle(title: "Forget your Password!"),
                const SizedBox(
                  height: 24,
                ),
                authsubtitle(
                  subtitle: "Enter your email and reset your password",
                ),
                const SizedBox(
                  height: 24,
                ),
                loginTextField(
                  validator: (value) {
                    return validInput(value!, 50, 15, 'email');
                  },
                  controller: controller.emailcontroller,
                  hint: "Enter your email",
                  lable: 'Email',
                  suffixicon: const Icon(Icons.email_outlined),
                ),
                const SizedBox(
                  height: 24,
                ),
                login(
                    fun: () {
                      controller.checkemail();
                    },
                    name: 'Check'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
