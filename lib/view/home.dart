// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traingo/view/widget/drawer.dart';
import 'package:traingo/view/widget/settings.dart';
import 'package:avatar_glow/avatar_glow.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  AppDrawer drawer = AppDrawer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff09101c),
          key: _key,
          drawer: drawer,
          body: Container(
            padding: EdgeInsets.only(top: Get.height * .00),
            decoration: BoxDecoration(
              gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff0d131c),
                Color(0xff0d131c),
              ],
            )),
            alignment: Alignment.center,
            // color: Color(0xffeb3446),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  IconButton(
                    icon: Icon(Icons.sort, color: Color(0xffffffff)),
                    onPressed: () {
                      _key.currentState!.openDrawer();
                    },
                  ),
                  Text(
                    "Traingo",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Color(0xffffffff)),
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, color: Color(0xffffffff)),
                    onPressed: () {
                      Get.to(AppSettings());
                    },
                  ),
                ]),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.785),
                  child: Column(
                    children: [
                      Text(
                        "Appuyer sur le bouton ci-dessus pour activer Traingo",
                        style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Color(0xffffffff)),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.015),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xff0ec761),
                                        Color(0xff0ec761),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.all(15.0),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 13),
                                ),
                                onPressed: () {},
                                child: const Text('Modifier les paramètres', style: TextStyle( fontFamily: "ProductSans")),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
