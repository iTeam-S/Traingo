// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SafeArea(
            child: ListView(padding: EdgeInsets.zero, children: [
      Divider(),
      ListTile(
        leading: CircleAvatar(
          backgroundColor: Color(0xff09101c),
          child: Icon(Icons.do_not_touch),
        ),
        title: Text(
            "Pocket mode"), //Route provisoire ,juste le temps que je test le pocket mode
        onTap: () {
          Get.toNamed('/pocket');
        },
      ),
      Divider(),
    ])));
  }
}
