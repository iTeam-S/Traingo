import 'package:all_sensors2/all_sensors2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traingo/algo.dart';
//import 'package:traingo/algo.dart';

class PocketMode extends StatefulWidget {
  const PocketMode({Key? key}) : super(key: key);

  @override
  _PocketModeState createState() => _PocketModeState();
}

class _PocketModeState extends State<PocketMode> {
  bool _proximityValues = false;
  double xu = 0.0, yu = 0.0, zu = 0.0;

  @override
  void initState() {
    super.initState();
    accelerometerEvents!.listen((AccelerometerEvent event) {
      setState(() {
        xu = double.parse((event.x).toStringAsFixed(2));
        yu = double.parse((event.y).toStringAsFixed(2));
        zu = double.parse((event.z).toStringAsFixed(2));
        print("$xu,$yu,$zu");
      });
    });
    proximityEvents!.listen((ProximityEvent event) {
      setState(() {
        // event.getValue return true or false
        _proximityValues = event.getValue();
        print(_proximityValues);
      });
    }); //get the sensor data and set then to the data types
  }

  @override
  Widget build(BuildContext context) {
    Compare(xu, yu, zu);
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
          SizedBox(
            height: Get.height * .02,
          ),
          /*valeur fixé à deux chiffres après la virgule*/
          Text("X : $xu", style: TextStyle(fontSize: 20.0)),
          Text("Y : $yu", style: TextStyle(fontSize: 20.0)),
          Text("Z : $zu", style: TextStyle(fontSize: 20.0)),
          Divider(
            height: 10,
          ),
          Text("Postion actuel du phone:", style: TextStyle(fontSize: 20.0)),
          SizedBox(
            height: 5,
          ),
          if (Compare(xu, yu, zu) == 1)
            Text("position normal")
          else if (Compare(xu, yu, zu) == 2)
            Text("position renversé à plat ventre")
          else if (Compare(xu, yu, zu) == 3)
            Text("position sur le coté droit")
          else if (Compare(xu, yu, zu) == 4)
            Text("position sur le coté gauche (coté btt volume)")
          else if (Compare(xu, yu, zu) == 5)
            Text("position mitsangana")
          else if (Compare(xu, yu, zu) == 6)
            Text("position mitsangana")
          else
            Text("404")
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
                -rouler de gauche à droite ou l'inverse (position Y)
                -tourner sur elle même de gauche à droite ou l'inverse (position Z)
                -rouler avant vers l'arrière ou l'inverse (position X)
        Et qu'on peut definir si le phone est à proximité d'un objet ou pas (face à l'écran) 
        avec plus ou moins 1.5cm de detection 0...
        Donc si on connais la position initial du phone [après le 5 secondes ET _proximityValues=True] ,
        on peut facilement savoir si le phone est entrain de bouger ou non.
         */
        