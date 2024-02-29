import 'package:flutter/material.dart';

import 'core/constant/routs.dart';
import 'view/screen/auth/checkemail.dart';
import 'view/screen/auth/forgetpassword.dart';
import 'view/screen/auth/loing.dart';
import 'view/screen/auth/resetpassword.dart';
import 'view/screen/auth/success_reset.dart';
import 'view/screen/auth/signup.dart';
import 'view/screen/auth/success_signup.dart';
import 'view/screen/auth/verifiy.dart';
import 'view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approuts.login: (context) => const Login(),
  Approuts.onboarding: (context) => const OnBoarding(),
  Approuts.signup: (context) => const Signup(),
  Approuts.forgetpassword: (context) => const Forgetpassword(),
  Approuts.verifiy: (context) => const Verifiy(),
  Approuts.resetpassword: (context) => const Restpassword(),
  Approuts.successreset: (context) => const SuccessReset(),
  Approuts.successsignup: (context) => const SuccessSignup(),
  Approuts.checkemail: (context) => const CheckEmail(),
};
