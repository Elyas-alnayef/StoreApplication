import 'package:flutter/material.dart';
import 'package:sotreapplication/core/constant/color.dart';

Widget loginTextField({
  required String hint,
  required String lable,
  required Icon suffixicon,
  required TextEditingController controller,
}) =>
    Container(
      height: 56,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: hint,
            hintStyle: const TextStyle(
                color: AppColors.subtitlecolor,
                fontSize: 14,
                fontWeight: FontWeight.normal),
            label: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Text(lable)),
            contentPadding: const EdgeInsets.symmetric(horizontal: 25),
            suffixIcon: suffixicon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      ),
    );
