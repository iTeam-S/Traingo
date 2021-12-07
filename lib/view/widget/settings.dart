// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:accordion/accordion.dart';


class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.035
          ),
          color: Color(0xfff2fbff),
          child: ListView(
            padding: EdgeInsets.zero, 
            children: [
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02
                ),
                child:  IconButton(icon: Icon(Icons.favorite_border), onPressed: () {},),
              ),
              Accordion(
                headerBackgroundColor: Colors.white,
                contentBorderColor: Colors.white,
                contentBorderWidth: 0,
                headerBorderRadius: 10,
                contentBorderRadius: 40,
                headerPadding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.020,
                  horizontal: MediaQuery.of(context).size.width * 0.05
                ),
                maxOpenSections: 1,
                leftIcon: Icon(Icons.settings, color: Colors.blueGrey),
                rightIcon: Icon(Icons.keyboard_arrow_down, color: Colors.blueGrey, size: 18),
                children: [
                  AccordionSection(
                    isOpen: false,
                    header: Text('Fonctionnalité 1', style: TextStyle(color: Colors.blueGrey, fontSize: 15)),
                    content: Column(
                      children: [
                        Divider(color: Colors.blueGrey, thickness: 0.2,),
                        Text('Description de la fonctionnalité', style: TextStyle(color: Colors.blueGrey, fontSize: 13)),
                      ],
                    ),
                  ),
                  AccordionSection(
                    isOpen: false,
                    header: Text('Fonctionnalité 2', style: TextStyle(color: Colors.blueGrey, fontSize: 15)),
                    content: Icon(Icons.airline_seat_flat, size: 120, color: Colors.blue[200]),
                  ),
                  AccordionSection(
                    isOpen: false,
                    header: Text('Fonctionnalité 3', style: TextStyle(color: Colors.blueGrey, fontSize: 15)),
                    content: Icon(Icons.airplay, size: 70, color: Colors.green[200]),
                  ),
                  AccordionSection(
                    isOpen: false,
                    header: Text('Fonctionnalité 4', style: TextStyle(color: Colors.blueGrey, fontSize: 15)),
                    content: Icon(Icons.airplay, size: 70, color: Colors.green[200]),
                  ),
                ],
              ),
            ]
          ),
        )
      )
    );
  }
}
