import 'package:flutter/material.dart';
import 'package:kimnesik/view/patientFollowUpAddInformation.dart';

class PatientFollowUp extends StatefulWidget {
  const PatientFollowUp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PatientFollowUpState();
  }
}

class PatientFollowUpState extends State<PatientFollowUp> {
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
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(
          flex: 1,
        ),
        Expanded(
            flex: 20,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Nom du Patient",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27.4,
                          color: Color(0xff24B7B1),
                          //color: Color(0xff24B7B1)
                        )),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(
                      flex: 5,
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Programmes",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xff24B7B1),
                                  )),
                              Text("Programmes L.C.A",
                                  style: TextStyle(fontSize: 14.3)),
                            ],
                          ))
                        ],
                      ))),
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(
                      flex: 5,
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Phase 1 ... 2 ... 3 ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xff24B7B1),
                                  )),
                            ],
                          ))
                        ],
                      ))),
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(
                      flex: 5,
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Notes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Color(0xff24B7B1),
                                  )),
                              Text("Ajout de séance de vélo",
                                  style: TextStyle(fontSize: 14.3)),
                            ],
                          ))
                        ],
                      ))),
                  Spacer(
                    flex: 1,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Color(0xff24B7B1),
                    child: new InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      new PatientFollowUpAddInformation()));
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(
                                Icons.add_circle_rounded,
                                size: 40,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Ajouter une information',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        )),
                  ),
                ])),
        Spacer(
          flex: 1,
        ),
      ],
    ));
  }
}
/*
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
  */
