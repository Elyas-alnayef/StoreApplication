import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../data/datasource/static.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onboardinglist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    onboardinglist[index].title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  Image.asset(onboardinglist[index].image,
                      height: 300, width: 200),
                  const SizedBox(
                    height: 48,
                  ),
                  Text(onboardinglist[index].body,
                      style: const TextStyle(
                        height: 2,
                        color: AppColors.subtitlecolor,
                      ),
                      textAlign: TextAlign.center),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
