import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboardingcontroller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static.dart';

Widget onboardingslider() => GetBuilder<implemntonboardingcontroller>(
      builder: (controller) => PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.pagechaged(value);
        },
        itemCount: onboardinglist.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset(onboardinglist[index].image),
              const SizedBox(
                height: 40,
              ),
              Text(
                onboardinglist[index].title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(onboardinglist[index].body,
                  style: const TextStyle(
                    height: 2,
                    color: AppColors.subtitlecolor,
                  ),
                  textAlign: TextAlign.center),
            ],
          );
        },
      ),
    );
