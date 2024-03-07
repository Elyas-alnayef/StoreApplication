import 'package:get/get.dart';

validInput(String value, int max, int min, String type) {
  if (value.isEmpty) {
    return "can't be empty";
  }
  if (type == 'username') {
    if (!GetUtils.isUsername(value)) {
      return "not valid username ";
    }
  }
  if (type == 'email') {
    if (!GetUtils.isEmail(value)) {
      return "not valid email ";
    }
  }
  if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(value)) {
      return "not valid phone number ";
    }
  }
  if (value.length > max) {
    return "can't be more than $max characters";
  }
  if (value.length < min) {
    return "can't be less than $min characters";
  }
}
