import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hackout/constants.dart';
import 'package:hackout/controllers/auth_controller.dart';
import 'package:hackout/views/screens/auth/login_screen.dart';
import 'package:hackout/views/screens/auth/signup_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    Get.put(AuthController());
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hackout",
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          canvasColor: Colors.transparent),
      home: LoginScreen(),
    );
  }
}
