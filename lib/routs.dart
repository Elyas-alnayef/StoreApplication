import 'package:flutter/material.dart';

import 'core/constant/routs.dart';
import 'view/screen/auth/loing.dart';
import 'view/screen/onboarding.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Approuts.login: (context) => const Login(),
  Approuts.onboarding: (context) => const OnBoarding(),
};
