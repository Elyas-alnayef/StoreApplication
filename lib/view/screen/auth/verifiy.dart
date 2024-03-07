import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/forgetpasswordcontroller.dart';
import '../../../controller/auth/verifiycontroller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/button.dart';
import '../../widget/auth/subtitle.dart';
import '../../widget/auth/textformfield.dart';

class Verifiy extends StatelessWidget {
  const Verifiy({super.key});

  @override
  Widget build(BuildContext context) {
    Verifiycontrollerimp controller = Get.put(Verifiycontrollerimp());
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
                  height: 24,
                ),
                authsubtitle(
                  subtitle: "Enter your verification code",
                ),
                const SizedBox(
                  height: 24,
                ),
                loginTextField(
                  validator: (value) {
                    return validInput(value!, 10, 6, 'number');
                  },
                  controller: controller.codecontroller,
                  hint: "",
                  lable: 'Code',
                  suffixicon: const Icon(Icons.verified_user_outlined),
                ),
                const SizedBox(
                  height: 24,
                ),
                login(
                    fun: () {
                      controller.gotorestpassword();
                    },
                    name: 'Next'),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "didn't receive verification code ? ",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        controller.resendcode();
                      },
                      child: const Text("Resend",
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
      ),
    );
  }
}
