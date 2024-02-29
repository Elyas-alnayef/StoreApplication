import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';

abstract class Signupcontroller extends GetxController {
  signup();
  goTocheckemail();
  goTologin();
}

class Signupcontrollerimp extends Signupcontroller {
  late TextEditingController usernamecontroller;
  late TextEditingController emailcontroller;
  late TextEditingController phonecontroller;
  late TextEditingController passwordcontroller;

  @override
  goTocheckemail() {
    Get.toNamed(Approuts.checkemail);
  }

  @override
  goTologin() {
    Get.offNamed(Approuts.login);
  }

  @override
  signup() {}
  @override
  void onInit() {
    usernamecontroller = TextEditingController();
    phonecontroller = TextEditingController();
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phonecontroller.dispose();
    usernamecontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }
}
