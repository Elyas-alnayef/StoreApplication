import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';

abstract class Checkemailcontroller extends GetxController {
  gotoSuccessSignUp();
  resendcode();
}

class Checkemailcontrollerimp extends Checkemailcontroller {
  late TextEditingController codecontroller;

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
    Get.toNamed(Approuts.successsignup);
  }

  @override
  resendcode() {}
}
