import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';

abstract class Checkemailcontroller extends GetxController {
  gotoSuccessSignUp();
  resendcode();
}

class Checkemailcontrollerimp extends Checkemailcontroller {
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
  gotoSuccessSignUp() {
    var formstate = formkey.currentState;
    if (formstate!.validate()) {
      Get.toNamed(Approuts.successsignup);
      //when the page dispose this line of code delete the cotroller from the memory
      Get.delete<Checkemailcontrollerimp>();
    } else {}
  }

  @override
  resendcode() {}
}
