import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

Widget langbutton({
  required String text,
  required Function fun,
}) =>
    Container(
      height: 56,
      margin: const EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {
            fun();
          },
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          )),
    );
