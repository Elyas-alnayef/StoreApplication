import 'package:get/get.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {
          "1": "Choose Language",
          "2": "Choose Product",
          "3":
              "We Have a 100k+ Products. Choose\nYour Products From Our\n Store"
        },
        "ar": {
          "1": "اختر اللغة ",
          "2": "اختر منتجا ",
          "3": "لدينا أكثر من 100 ألف منتج. اختر\nمنتجاتك من\n متجرنا"
        },
      };
}
