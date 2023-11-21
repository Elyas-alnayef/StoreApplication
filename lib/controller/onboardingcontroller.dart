import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/routs.dart';

abstract class onboardingcontroller extends GetxController {
  next();
  pagechaged(int index);
}

class implemntonboardingcontroller extends onboardingcontroller {
  PageController pageController = PageController();
  int currentpage = 0;
  @override
  next() {
    if (currentpage < 3) {
      currentpage++;
      if (currentpage == 3) {
        Get.offAllNamed(Approuts.login);
      }
    }
    pageController.animateToPage(currentpage,
        duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  @override
  pagechaged(int index) {
    currentpage = index;
    update();
  }
}
