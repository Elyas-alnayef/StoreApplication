import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  // ignore: non_constant_identifier_names
  late SharedPreferences SharedPrefs;
  Future<MyServices> init() async {
    SharedPrefs = await SharedPreferences.getInstance();
    return this;
  }
}

initialSevices() async {
  await Get.putAsync(() => MyServices().init());
}
