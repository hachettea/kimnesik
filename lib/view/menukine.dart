import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kimnesik/view/listeprogrammes.dart';

class Menukine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MenukineState();
  }
}

class MenukineState extends State<Menukine> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget _buildBox({int points, Color color, Color textColor = Colors.white}) {
    return Expanded(
      flex: points,
      child: Container(
        constraints: BoxConstraints.expand(),
        color: color,
        child: Center(
          child: Text(
            '$points',
            style: TextStyle(fontSize: 32.0, color: textColor),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 10, top: 35.2, right: 10),
                child: RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                          text: "K",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 27.4,
                              color: Color(0xff24B7B1))),
                      TextSpan(
                          text: "imnési",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 27.4)),
                      TextSpan(
                          text: "ꓘ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 27.4,
                              color: Color(0xff24B7B1))),
                    ],
                  ),
                )),
            /*Text(
                  "KimnésiK",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27.4),
                )),*/
          ],
        ),
        Expanded(
          flex: 4,
          child: (Row(children: [
            Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                      flex: 1,
                      child: OutlineButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new ListeProgrammes()),
                          )
                        },
                        color: Colors.white,
                        child: Row(children: [
                          Spacer(
                            flex: 1,
                          ),
                          Expanded(
                            child: Column(
                                // Replace with a Row for horizontal icon + text
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/patient.png',
                                    fit: BoxFit.fitHeight,
                                    color: Color(0xff24B7B1),
                                  ),
                                  Text("Patients",
                                      style: TextStyle(fontSize: 14.3))
                                ]),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                        ]),
                      )),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 0, top: 15, right: 0)),
                  Expanded(
                    flex: 1,
                    child: OutlineButton(
                        onPressed: () => {},
                        color: Colors.white,
                        child: Row(children: [
                          Spacer(
                            flex: 1,
                          ),
                          Expanded(
                              child: Column(
                                  // Replace with a Row for horizontal icon + text
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                Image.asset(
                                  'assets/cardiogram.png',
                                  fit: BoxFit.fitHeight,
                                  color: Color(0xff24B7B1),
                                ),
                                Text("Programmes",
                                    style: TextStyle(fontSize: 14.3))
                              ])),
                          Spacer(
                            flex: 1,
                          ),
                        ])),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ])),
        )
      ],
    ));
  }
}
