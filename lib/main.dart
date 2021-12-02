import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traingo/view/pocket.dart';
import 'package:traingo/view/splash.dart';
import 'package:traingo/view/home.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2500), () {
      Get.offNamed('/home');
    });

    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff0ec761),
        primarySwatch: Colors.green,
        fontFamily: "ProductSans",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/pocket': (context) => const PocketMode(),
      },
    );
  }
}
