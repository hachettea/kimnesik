import 'package:flutter/material.dart';

class ProgramGenerator extends StatefulWidget {
  const ProgramGenerator({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ProgramGeneratorState();
  }
}

class ProgramGeneratorState extends State<ProgramGenerator> {
  TextEditingController textController = TextEditingController();

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
          //si on veut rajouter un titre a notre page
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.only(
                    left: 10, top: 35.2, right: 10, bottom: 70),
                child: RichText(
                  text: TextSpan(
                      text: "Programmes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27.4,
                        color: Color(0xff24B7B1),
                        //color: Color(0xff24B7B1)
                      )),
                )),
          ],
        ),
        Expanded(
          flex: 10,
          child: (Row(children: [
            Spacer(
              flex: 1,
            ),
            Expanded(
                flex: 8,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Card(
                              child: Column(children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Nom du programme:",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color(0xff24B7B1),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: '(Ex: ligament croisé)',
                                      ),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Color(0xff24B7B1),
                                      ),
                                    ),
                                  )
                                ]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Nombre de phase:",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color(0xff24B7B1),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: '(Ex: 1)',
                                      ),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Color(0xff24B7B1),
                                      ),
                                    ),
                                  )
                                ]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Phase 1",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Color(0xff24B7B1),
                                    ),
                                  ),
                                ]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Durée:",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color(0xff24B7B1),
                                    ),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: TextField(
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: '(Ex: 10jours)',
                                      ),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Color(0xff24B7B1),
                                      ),
                                    ),
                                  )
                                ]),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Exercice:",
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Color(0xff24B7B1),
                                    ),
                                  ),
                                ]),
                          ]))),
                    ])),
            Spacer(
              flex: 1,
            ),
          ])),
        ),
      ],
    ));
  }
}
