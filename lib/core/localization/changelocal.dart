import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/services.dart';

class LocalController extends GetxController {
  Locale? initiallanguage;
  MyServices servicescontroller = Get.find();
  cahngelanguage(String langCode) {
    //to set the local
    Locale locale = Locale(langCode);
    //to save the locale in the shared preferance
    servicescontroller.SharedPrefs.setString('language', locale.toString());
    //to update the language i the app
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    if (servicescontroller.SharedPrefs.getString('language') == null) {
      initiallanguage = Locale(Get.deviceLocale!.languageCode);
    } else {
      String? langcode = servicescontroller.SharedPrefs.getString('language');
      Locale locale = Locale(langcode!);
      initiallanguage = Locale(locale.languageCode);
    }
    super.onInit();
  }
}
