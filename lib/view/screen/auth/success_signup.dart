import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/color.dart';
import 'package:sotreapplication/core/constant/routs.dart';
import 'package:sotreapplication/view/widget/auth/button.dart';

import '../../widget/auth/subtitle.dart';
import '../../widget/auth/title.dart';

class SuccessSignup extends StatelessWidget {
  const SuccessSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            authtitle(title: "Successfully"),
            Icon(
              Icons.check_circle_outline,
              size: 200,
              color: AppColors.primaryColor,
            ),
            SizedBox(
              height: 16,
            ),
            authsubtitle(subtitle: "congratulations successfully registered"),
            Spacer(),
            login(
                fun: () {
                  Get.toNamed(Approuts.login);
                },
                name: "Sign in")
          ],
        ),
      ),
    );
  }
}
