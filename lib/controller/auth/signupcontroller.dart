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
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  goTocheckemail() {
    Get.toNamed(Approuts.checkemail);
  }

  @override
  goTologin() {
    Get.offNamed(Approuts.login);
  }

  @override
  signup() {
    var formstate = formkey.currentState;
    if (formstate!.validate()) {
      goTocheckemail();
      //when the page dispose this line of code delete the cotroller from the memory
      Get.delete<Signupcontrollerimp>();
    } else {}
  }

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
