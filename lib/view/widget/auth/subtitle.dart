import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

Widget authsubtitle({required String subtitle}) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15, color: AppColors.subtitlecolor),
      ),
    );
