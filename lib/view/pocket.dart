import 'package:all_sensors2/all_sensors2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PocketMode extends StatefulWidget {
  const PocketMode({Key? key}) : super(key: key);

  @override
  _PocketModeState createState() => _PocketModeState();
}

class _PocketModeState extends State<PocketMode> {
  bool _proximityValues = false;
  @override
  void initState() {
    super.initState();
    proximityEvents!.listen((ProximityEvent event) {
      setState(() {
        // event.getValue return true or false
        _proximityValues = event.getValue();
      });
    }); //get the sensor data and set then to the data types
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("ROUGE : FALSE",
              style: TextStyle(color: Colors.red, fontSize: 25)),
          Text("BLEU : TRUE",
              style: TextStyle(color: Colors.blue, fontSize: 25)),
          SizedBox(
            height: Get.height * .02,
          ),
          Center(
            child: CircleAvatar(
              backgroundColor: (_proximityValues) ? Colors.blue : Colors.red,
              radius: 50,
            ),
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          (_proximityValues)
              ? Text(
                  "Il y a un corps à proximité.",
                  style: TextStyle(fontSize: 20),
                )
              : Text("R.A.S", style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
        /*
        When the 'Start' Button is clicked, wait for 5 seconds for the user to put the phone in pocket.
        1) Then start the proximity sensor, the initial value that the sensor will catch should be 0, which indicates
        that the phone is finally inside the pocket. If it is not zero, it means the phone is still outside, and
        a prompt should be displayed on screen alarming the user about the issue.
        2) After 5 seconds grace period, use the DevicePolicyManager to lock the phone.

        bon, supposons qu'un phone peut: 
                -rouler de gauche à droite ou l'inverse (Y)
                -tourner sur elle même de gauche à droite ou l'inverse (Z)
                -rouler avant vers l'arrière ou l'inverse (X)
        Et qu'on peut definir si le phone est à proximité d'un objet ou pas (face à l'écran) 
        avec plus ou moins 1.5cm de detection
         */