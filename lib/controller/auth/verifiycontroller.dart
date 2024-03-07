import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';

abstract class Verifiycontroller extends GetxController {
  gotorestpassword();
  resendcode();
}

class Verifiycontrollerimp extends Verifiycontroller {
  late TextEditingController codecontroller;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  void onInit() {
    codecontroller = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    codecontroller.dispose();
    super.dispose();
  }

  @override
  gotorestpassword() {
    var formstate = formkey.currentState;
    if (formstate!.validate()) {
      Get.toNamed(Approuts.resetpassword);
      //when the page dispose this line of code delete the cotroller from the memory
      Get.delete<Verifiycontrollerimp>();
    } else {}
  }

  @override
  resendcode() {}
}
