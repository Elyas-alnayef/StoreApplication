import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sotreapplication/view/screen/auth/language.dart';
import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';
import 'routs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialSevices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController localController = Get.put(LocalController());
    return GetMaterialApp(
      locale: localController.initiallanguage,
      translations: MyTranslation(),
      routes: routes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Language(),
    );
  }
}
