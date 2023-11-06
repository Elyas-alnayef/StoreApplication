import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/color.dart';
import '../../controller/onboardingcontroller.dart';
import '../widget/onboarding/custombutton.dart';
import '../widget/onboarding/dotcontroller.dart';
import '../widget/onboarding/slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(implemntonboardingcontroller());
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(flex: 4, child: onboardingslider()),
              Expanded(
                  child: Column(
                children: [
                  onboardingdotcontroller(),
                  const Spacer(
                    flex: 2,
                  ),
                  onboardingbutton(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
