import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../../core/constant/routs.dart';
import '../../../core/localization/changelocal.dart';
import '../../widget/language/custombutton.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController localController = Get.find();
    return Scaffold(
      body: Container(
        color: AppColors.backgroundcolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 24,
            ),
            langbutton(
              fun: () {
                localController.cahngelanguage('ar');
                Get.toNamed(Approuts.onboarding);
              },
              text: 'Arabic ',
            ),
            const SizedBox(
              height: 24,
            ),
            langbutton(
              fun: () {
                localController.cahngelanguage('en');
                Get.toNamed(Approuts.onboarding);
              },
              text: 'English ',
            ),
          ],
        ),
      ),
    );
  }
}
