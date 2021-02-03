import 'dart:math';

import 'package:flutter/material.dart';

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
    return new Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.only(
                    left: 10, top: 35.2, right: 10, bottom: 80),
                child: Text(
                  "KimnésiK",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27.4),
                )),
          ],
        ),
        Expanded(
          flex: 4,
          child: (Row(children: [
            Spacer(
              flex: 4,
            ),
            Expanded(
              flex: 4,
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
                        onPressed: () => {},
                        color: Colors.white,
                        child: Expanded(
                          child: Column(
                              // Replace with a Row for horizontal icon + text
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/patient.png',
                                  fit: BoxFit.fitHeight,
                                ),
                                Text("Patients",
                                    style: TextStyle(fontSize: 14.3))
                              ]),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: OutlineButton(
                      onPressed: () => {},
                      color: Colors.white,
                      child: Column(
                          // Replace with a Row for horizontal icon + text
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/cardiogram.png',
                              fit: BoxFit.fitHeight,
                            ),
                            Text("Programmes", style: TextStyle(fontSize: 14.3))
                          ]),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 4,
            ),
          ])),
        )
      ],
    );
    /*
          Container(
              height: 220,
              child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.only(
                      left: 50, top: 0, right: 50, bottom: 0),
                  mainAxisSpacing: 10,
                  crossAxisCount: 1,
                  childAspectRatio: 2.11,
                  children: <Widget>[
                    
                    OutlineButton(
                      onPressed: () => {},
                      color: Colors.white,
                      child: Column(
                          // Replace with a Row for horizontal icon + text
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/cardiogram.png', height: 52.2),
                            Text("Programmes", style: TextStyle(fontSize: 14.3))
                          ]),
                    ),
                  ])),
        ]),
      ]),
    );*/
  }
}
