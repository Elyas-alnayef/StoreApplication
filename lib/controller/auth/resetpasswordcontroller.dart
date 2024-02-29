import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';

abstract class Resetpasswordcontroller extends GetxController {
  goTonext();
  reset();
}

class Resetpasswordcontrollerimp extends Resetpasswordcontroller {
  late TextEditingController newpasswordcontroller;
  late TextEditingController oldpasswordcontroller;
  late TextEditingController confirmpasswordcontroller;
  @override
  void onInit() {
    newpasswordcontroller = TextEditingController();
    oldpasswordcontroller = TextEditingController();
    confirmpasswordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    oldpasswordcontroller.dispose();
    newpasswordcontroller.dispose();
    confirmpasswordcontroller.dispose();
    super.dispose();
  }

  @override
  reset() {}

  @override
  goTonext() {
    Get.toNamed(Approuts.successreset);
  }
}
