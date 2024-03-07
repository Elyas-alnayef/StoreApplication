import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';

abstract class Forgetpasswordcontroller extends GetxController {
  gotoverifiy();
  checkemail();
}

class Forgetpasswordcontrollerimp extends Forgetpasswordcontroller {
  late TextEditingController emailcontroller;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  checkemail() {
    var formstate = formkey.currentState;
    if (formstate!.validate()) {
      gotoverifiy();
      //when the page dispose this line of code delete the cotroller from the memory
      Get.delete<Forgetpasswordcontrollerimp>();
    } else {}
  }

  @override
  gotoverifiy() {
    Get.toNamed(Approuts.verifiy);
  }

  @override
  void onInit() {
    emailcontroller = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }
}
