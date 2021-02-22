import 'package:flutter/material.dart';

class ListeProgrammes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListeProgrammesState();
  }
}

class ListeProgrammesState extends State<ListeProgrammes> {
  TextEditingController textController = TextEditingController();
  List<String> initialList = [
    "Ligament croisé",
    "Cheville",
    "Poignée",
    "Epaule",
    "Tibia"
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
    return new Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 10, top: 35.2, right: 10),
                child: RichText(
                  text: TextSpan(
                      text: "Programmes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27.4,
                        //color: Color(0xff24B7B1)
                      )),
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
                      flex: 4,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                            child: TextField(
                              controller: textController,
                              textAlign: TextAlign.center,
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
                                            onPressed: () => {},
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
                                          onPressed: () => {},
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
        )
      ],
    );
/*Expanded(
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
                  ),*/
  }
}
