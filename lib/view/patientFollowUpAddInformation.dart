import 'package:flutter/material.dart';
import 'package:kimnesik/view/patientFollowUpAddNote.dart';
import 'package:kimnesik/view/patientFollowUpAddProgram.dart';

class PatientFollowUpAddInformation extends StatefulWidget {
  const PatientFollowUpAddInformation({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PatientFollowUpAddInformationState();
  }
}

class PatientFollowUpAddInformationState
    extends State<PatientFollowUpAddInformation> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                                      new PatientFollowUpAddNote()));
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
                                'Ajouter une note libre',
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
                                      new PatientFollowUpAddProgram()));
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
                                'Ajouter un programme',
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
                ],
              )),
          Spacer(
            flex: 1,
          ),
        ]));
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
