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
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                          text: "Programmes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 27.4,
                            //color: Color(0xff24B7B1)
                          )),
                    ],
                  ),
                )),
          ],
        ),
        Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                TextField(
                  controller: textController,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  onChanged: (text) {
                    text = text.toLowerCase();
                    setState(() {
                      filteredList = initialList
                          .where(
                              (element) => element.toLowerCase().contains(text))
                          .toList();
                    });
                  },
                ),
                if (filteredList.length == 0 && textController.text.isEmpty)
                  Expanded(
                      child: ListView.builder(
                          itemCount: initialList.length,
                          itemBuilder: (BuildContext context, index) {
                            return Container(
                              height: 50,
                              child: Text(initialList[index],
                                  style: TextStyle(fontSize: 20)),
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
                            child: Text(filteredList[index],
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          );
                        }),
                  ),
              ],
            ))
      ],
    );
  }
}
