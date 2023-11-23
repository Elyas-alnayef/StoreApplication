import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

Widget login({
  required Function fun,
  required String name,
}) =>
    Container(
      height: 48,
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
            name,
            style: const TextStyle(color: Colors.white),
          )),
    );
