import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';

abstract class Resetpasswordcontroller extends GetxController {
  goTonext();
  reset();
}

class Resetpasswordcontrollerimp extends Resetpasswordcontroller {
  late TextEditingController newpasswordcontroller;
  late TextEditingController confirmpasswordcontroller;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void onInit() {
    newpasswordcontroller = TextEditingController();
    confirmpasswordcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    newpasswordcontroller.dispose();
    confirmpasswordcontroller.dispose();
    super.dispose();
  }

  @override
  reset() {
    var formstate = formkey.currentState;
    if (formstate!.validate()) {
      goTonext();
      //when the page dispose this line of code delete the cotroller from the memory
      Get.delete<Resetpasswordcontrollerimp>();
    } else {}
  }

  @override
  goTonext() {
    Get.toNamed(Approuts.successreset);
  }
}
