import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';
import 'package:sotreapplication/view/screen/auth/forgetpassword.dart';

abstract class Logincontroller extends GetxController {
  login();
  goToSignup();
  goToforgetpassword();
}

class Logincontrollerimp extends Logincontroller {
  late TextEditingController emailcontroller;
  late TextEditingController passwordcontroller;

  @override
  goToSignup() {
    Get.offNamed(Approuts.signup);
  }

  @override
  login() {}
  @override
  void onInit() {
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  @override
  goToforgetpassword() {
    Get.toNamed(Approuts.forgetpassword);
  }
}
