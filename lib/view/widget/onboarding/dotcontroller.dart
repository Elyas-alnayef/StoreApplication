import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/core/constant/color.dart';
import '../../../controller/onboardingcontroller.dart';
import '../../../data/datasource/static.dart';

Widget onboardingdotcontroller() => GetBuilder<implemntonboardingcontroller>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onboardinglist.length,
            (index) => AnimatedContainer(
              duration: const Duration(seconds: 2),
              child: Container(
                margin: const EdgeInsets.only(left: 8),
                height: 6,
                width: controller.currentpage == index ? 16 : 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: AppColors.primaryColor),
              ),
            ),
          ),
        ],
      ),
    );
