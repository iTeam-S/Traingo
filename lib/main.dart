
//import 'package:buildeo/view/screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2000), () {

      Get.offNamed('/home');
    });

    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xffeb3446),
        primarySwatch: Colors.red,
        fontFamily: "ProductSans",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyApp(),
      },
    );
  }
}
