import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void alertexiteapp() {
  Get.defaultDialog(
      title: "Warning",
      titleStyle: TextStyle(color: Colors.red, fontSize: 18),
      contentPadding: EdgeInsets.all(8.0),
      middleText: "Are you sure you want to close the app",
      actions: [
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: Text("Confirm")),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Cancle")),
          ],
        )
      ]);
}
