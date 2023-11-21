import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/color.dart';
import '../../../controller/onboardingcontroller.dart';

Widget onboardingbutton() => GetBuilder<implemntonboardingcontroller>(
      builder: (controller) => Container(
        height: 56,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {
              controller.next();
            },
            child: const Text(
              "Continue",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
