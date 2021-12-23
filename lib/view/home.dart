// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traingo/view/widget/drawer.dart';
import 'package:traingo/view/widget/settings.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  AppDrawer drawer = AppDrawer();

  // double difference =  Get.height * 0.301 - Get.height * 0.255 ;

  @override
  Widget build(BuildContext context) {

    double topCircle = MediaQuery.of(context).size.height * 0.301 - 30 ;

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [
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
                  ]
                ),
                Stack(
                  children: [
                    InkWell(
                      onTap: () { },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.301
                        ),
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: const Color(0xff131d2b),
                          child: const Icon(
                            Icons.power_settings_new,
                            color: Colors.white,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      // alignment: Alignment.center,
                      child: Container(
                      margin: EdgeInsets.only(
                        top: topCircle,
                        // left: MediaQuery.of(context).size.width * 0.2525,
                      ),
                      height: 180,
                      width: 180,
                        child: SfRadialGauge(axes: <RadialAxis>[
                          RadialAxis(
                            showLabels: false,
                            showTicks: false,
                            startAngle: 270,
                            endAngle: 270,
                            radiusFactor: 0.8,
                            axisLineStyle: AxisLineStyle(
                              thickness: 0.01,
                              color: const Color.fromARGB(30, 0, 169, 181),
                              thicknessUnit: GaugeSizeUnit.factor,
                              cornerStyle: CornerStyle.startCurve,
                            ),
                            pointers: <GaugePointer>[
                              RangePointer(
                                  // value: progressValue,
                                  width: 0.1,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  enableAnimation: true,
                                  animationDuration: 100,
                                  animationType: AnimationType.linear,
                                  cornerStyle: CornerStyle.startCurve,
                                  gradient: const SweepGradient(
                                      colors: <Color>[Color(0xFF00a9b5), Color(0xFFa4edeb)],
                                      stops: <double>[0.25, 0.75])),
                              MarkerPointer(
                                // value: progressValue,
                                markerType: MarkerType.circle,
                                enableAnimation: true,
                                animationDuration: 100,
                                animationType: AnimationType.linear,
                                color: const Color(0xFF87e8e8),
                              )
                            ],
                          ),
                        ]),
                      )
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.215),
                  child: Column(
                    children: [
                      Text(
                        "Activer Traingo via ce bouton ci-dessus",
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
