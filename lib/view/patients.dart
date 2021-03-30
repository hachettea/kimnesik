import 'package:flutter/material.dart';
import 'package:kimnesik/view/patientFollowUp.dart';
import 'package:kimnesik/view/patientGenerator.dart';

class Patients extends StatefulWidget {
  const Patients({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PatientsState();
  }
}

class PatientsState extends State<Patients> {
  TextEditingController textController = TextEditingController();
  List<String> initialList = [
    "Russell Lagacé",
    "Kerman Richard",
    "Marguerite Dufresne",
    "Ruby Talon",
    "Odo Bureau"
  ];
  List<String> filteredList = List();

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
        body: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 10, top: 35.2, right: 10),
                child: RichText(
                  text: TextSpan(
                      text: "Patients",
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
          flex: 6,
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
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                            child: TextField(
                              controller: textController,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Trouver un patient'),
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              onChanged: (text) {
                                text = text.toLowerCase();
                                setState(() {
                                  filteredList = initialList
                                      .where((element) =>
                                          element.toLowerCase().contains(text))
                                      .toList();
                                });
                              },
                            ),
                          ),
                          if (filteredList.length == 0 &&
                              textController.text.isEmpty)
                            Expanded(
                                child: ListView.builder(
                                    itemCount: initialList.length,
                                    itemBuilder: (BuildContext context, index) {
                                      return Container(
                                        height: 50,
                                        margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                        child: OutlineButton(
                                            onPressed: () => {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              new PatientFollowUp()))
                                                },
                                            color: Colors.white,
                                            child: Text(initialList[index],
                                                style:
                                                    TextStyle(fontSize: 20))),
                                      );
                                    }))
                          else if (filteredList.length == 0 &&
                              textController.text.isNotEmpty)
                            Expanded(
                              child: Container(
                                child: Text('Aucune donnée'),
                              ),
                            )
                          else
                            Expanded(
                              child: ListView.builder(
                                  itemCount: filteredList.length,
                                  itemBuilder: (BuildContext context, index) {
                                    return Container(
                                      height: 50,
                                      margin: EdgeInsets.fromLTRB(0, 2, 0, 2),
                                      child: OutlineButton(
                                          onPressed: () => {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            new PatientFollowUp()))
                                              },
                                          color: Colors.white,
                                          child: Text(filteredList[index],
                                              style: TextStyle(
                                                fontSize: 20,
                                              ))),
                                    );
                                  }),
                            ),
                        ],
                      )),
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
        ),
        Expanded(
          flex: 1,
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
                  Column(
                    children: <Widget>[
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
                                          new PatientGenerator()));
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
                                    'Ajouter un patient',
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
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
          ])),
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
