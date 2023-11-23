import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';

abstract class Verifiycontroller extends GetxController {
  gotorestpassword();
  resendcode();
}

class Verifiycontrollerimp extends Verifiycontroller {
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
  gotorestpassword() {
    Get.toNamed(Approuts.resetpassword);
  }

  @override
  resendcode() {}
}
