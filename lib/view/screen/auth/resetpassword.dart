import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/resetpasswordcontroller.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/button.dart';
import '../../widget/auth/textformfield.dart';
import '../../widget/auth/title.dart';

class Restpassword extends StatelessWidget {
  const Restpassword({super.key});

  @override
  Widget build(BuildContext context) {
    Resetpasswordcontrollerimp controller =
        Get.put(Resetpasswordcontrollerimp());
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
                const SizedBox(
                  height: 40,
                ),
                authtitle(title: "Reset your passwor"),
                const SizedBox(
                  height: 24,
                ),
                loginTextField(
                  validator: (value) {
                    return validInput(value!, 50, 8, 'password');
                  },
                  controller: controller.newpasswordcontroller,
                  hint: "Enter new password",
                  lable: 'New',
                  suffixicon: const Icon(Icons.lock_outline),
                ),
                const SizedBox(
                  height: 24,
                ),
                loginTextField(
                  validator: (value) {
                    return validInput(value!, 50, 8, 'password');
                  },
                  controller: controller.confirmpasswordcontroller,
                  hint: "Confirm password",
                  lable: 'Confirm',
                  suffixicon: const Icon(Icons.verified_user_outlined),
                ),
                const SizedBox(
                  height: 24,
                ),
                login(
                    fun: () {
                      controller.reset();
                    },
                    name: 'Confirm'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
