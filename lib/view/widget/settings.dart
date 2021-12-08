// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe
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

  List<bool> isSwitched = [false, false, false, false];
  List<bool> opened = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.03
          ),
          color: Color(0xfff2fbff),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01
                ),
                child:  IconButton(icon: Icon(Icons.close, color: Colors.blueGrey,), onPressed: () {Navigator.pop(context);},),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.zero, 
                // ignore: sized_box_for_whitespace
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Accordion(
                    headerBackgroundColor: Colors.white,
                    contentBorderColor: Colors.white,
                    contentBorderWidth: 0,
                    headerBorderRadius: 10,
                    contentBorderRadius: 40,
                    headerPadding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.020,
                      horizontal: MediaQuery.of(context).size.width * 0.05
                    ),
                    maxOpenSections: 4,
                    rightIcon: Icon(Icons.keyboard_arrow_down, color: Colors.blueGrey, size: 18),
                    children: [
                      AccordionSection(
                        leftIcon: CircleAvatar(
                          radius: 15,
                          backgroundColor:
                          const Color(0xff0ec761),
                          child: const Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        isOpen: opened[0],
                        header: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Fonctionnalité 1', style: TextStyle(color: Colors.blueGrey, fontSize: 14.5)),
                            Switch(
                              value: isSwitched[0],
                              activeColor: Color(0xff0ec761),
                              onChanged: (value) {
                                opened[0] = value;
                                List<bool> tmp = opened;
                                setState(() {
                                  isSwitched[0] = value ;
                                  opened = tmp;
                                });
                              },
                            ),
                          ],
                        ),
                        content: Column(
                          children: [
                            Divider(color: Colors.blueGrey, thickness: 0.2,),
                            Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01
                              ),
                              child: Text('Description de la fonctionnalité, ceci permet de connaitre la fonctionnalité', style: TextStyle(color: Colors.blueGrey, fontSize: 14))
                            ),
                          ],
                        ),
                      ),
                      AccordionSection(
                        leftIcon: CircleAvatar(
                          radius: 15,
                          backgroundColor:
                          const Color(0xff50a3eb),
                          child: const Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        isOpen: opened[1],
                        header: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Fonctionnalité 2', style: TextStyle(color: Colors.blueGrey, fontSize: 14.5)),
                            Switch(
                              value: isSwitched[1],
                              activeColor: Color(0xff0ec761),
                              onChanged: (value) {
                                setState(() {
                                  isSwitched[1] = value;
                                  opened[1] = value;
                                });
                              },
                            ),
                          ],
                        ),
                        content: Column(
                          children: [
                            Divider(color: Colors.blueGrey, thickness: 0.2,),
                            Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01
                              ),
                              child: Text('Description de la fonctionnalité, ceci permet de connaitre la fonctionnalité', style: TextStyle(color: Colors.blueGrey, fontSize: 14))
                            ),
                          ],
                        ),
                      ),
                      AccordionSection(
                        leftIcon: CircleAvatar(
                          radius: 15,
                          backgroundColor:
                          const Color(0xffaa69f0),
                          child: const Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        isOpen: opened[2],
                        header: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Fonctionnalité 3', style: TextStyle(color: Colors.blueGrey, fontSize: 14.5)),
                            Switch(
                              value: isSwitched[2],
                              activeColor: Color(0xff0ec761),
                              onChanged: (value) {
                                setState(() {
                                  opened[2] = value;
                                  isSwitched[2] = value;
                                });
                              },
                            ),
                          ],
                        ),
                        content: Column(
                          children: [
                            Divider(color: Colors.blueGrey, thickness: 0.2,),
                            Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01
                              ),
                              child: Text('Description de la fonctionnalité, ceci permet de connaitre la fonctionnalité', style: TextStyle(color: Colors.blueGrey, fontSize: 14))
                            ),
                          ],
                        ),
                      ),
                      AccordionSection(
                        leftIcon: CircleAvatar(
                          radius: 15,
                          backgroundColor:
                          const Color(0xffe84a3f),
                          child: const Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                        isOpen: opened[3],
                        header: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Fonctionnalité 4', style: TextStyle(color: Colors.blueGrey, fontSize: 14.5)),
                            Switch(
                              value: isSwitched[3],
                              activeColor: Color(0xff0ec761),
                              onChanged: (value) {
                                opened[3] = value;
                                setState(() {
                                  isSwitched[3] = value;
                                });
                              },
                            ),
                          ],
                        ),
                        content: Column(
                          children: [
                            Divider(color: Colors.blueGrey, thickness: 0.2,),
                            Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.01
                              ),
                              child: Text('Description de la fonctionnalité, ceci permet de connaitre la fonctionnalité', style: TextStyle(color: Colors.blueGrey, fontSize: 14))
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
