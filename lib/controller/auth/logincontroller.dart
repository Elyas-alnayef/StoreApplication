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
  GlobalKey<FormState> formkey = new GlobalKey<FormState>();

  @override
  goToSignup() {
    Get.offNamed(Approuts.signup);
    Get.delete<Logincontrollerimp>();
  }

  @override
  login() {
    var formdata = formkey.currentState;
    if (formdata!.validate()) {
      Get.delete<Logincontrollerimp>();
    } else {}
  }

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
    //when the page dispose this line of code delete the cotroller from the memory
    Get.delete<Logincontrollerimp>();
  }
}
