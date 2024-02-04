import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_app/core/constants/path.dart';
import 'package:groceries_app/modules/splash/screens/onbording.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff49B279),
      body: InkWell(
          onTap: () => Get.toNamed('/onbording/'),
          child:
              Center(child: Image.asset('${Path.imagePath}splashScreen.png'))),
    );
  }
}
