import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PocketMode extends StatelessWidget {
  const PocketMode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Click sur le boutton"),
          SizedBox(
            height: Get.height * .02,
          ),
          Center(
            child: MaterialButton(
              shape: CircleBorder(),
              padding: EdgeInsets.all(30),
              color: Colors.teal,
              onPressed: () {
                print("okay");
              },
              child: Text("OKAY"),
            ),
          ),
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
         */