import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/auth/checkemailcontroller.dart';
import '../../../core/constant/color.dart';
import '../../widget/auth/button.dart';
import '../../widget/auth/subtitle.dart';
import '../../widget/auth/textformfield.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});
  @override
  Widget build(BuildContext context) {
    Checkemailcontrollerimp controller = Get.put(Checkemailcontrollerimp());
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
              const SizedBox(
                height: 24,
              ),
              authsubtitle(
                subtitle: "Enter your email verification code",
              ),
              const SizedBox(
                height: 24,
              ),
              loginTextField(
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
                    controller.gotoSuccessSignUp();
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
    );
  }
}