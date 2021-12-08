// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffffffff),
              Color(0xffffffff),
            ],
          )),
        alignment: Alignment.center,
        // color: Color(0xffeb3446),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.38
              ),
              height: MediaQuery.of(context).size.height * 0.30,
              child: Text(
                "Traingo",
                style: TextStyle(
                  color: Color(0xff0ec761),
                  fontSize: 60,
                  fontFamily: "ProductSans",
                  fontWeight: FontWeight.bold
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.24
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade400,
                highlightColor:  Colors.grey,
                period: Duration(seconds: 2),
                child: Text(
                  "From iTeam-\$",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontFamily: "ProductSans",
                    fontWeight: FontWeight.bold
                  ),
                )
              )
            )
          ],
        ),
      ),
    );
  }
}