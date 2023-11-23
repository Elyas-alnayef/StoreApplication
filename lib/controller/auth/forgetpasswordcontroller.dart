import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/routs.dart';

abstract class Forgetpasswordcontroller extends GetxController {
  gotoverifiy();
  checkemail();
}

class Forgetpasswordcontrollerimp extends Forgetpasswordcontroller {
  late TextEditingController emailcontroller;
  @override
  checkemail() {}

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
