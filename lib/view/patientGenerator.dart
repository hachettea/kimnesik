import 'package:flutter/material.dart';

class PatientGenerator extends StatefulWidget {
  const PatientGenerator({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PatientGeneratorState();
  }
}

class PatientGeneratorState extends State<PatientGenerator> {
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
                RichText(
                  text: TextSpan(
                      text: "Nouveau Patient",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27.4,
                        color: Color(0xff24B7B1),
                        //color: Color(0xff24B7B1)
                      )),
                ),
                SizedBox(height: 40),
                TextFormField(
                    decoration: InputDecoration(
                  labelStyle: Theme.of(context).textTheme.subhead,
                  labelText: 'Nom',
                  contentPadding: EdgeInsets.all(15.0),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                )),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                  labelStyle: Theme.of(context).textTheme.subhead,
                  labelText: 'Prénom',
                  contentPadding: EdgeInsets.all(15.0),
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                )),
                SizedBox(height: 40),
                Card(
                  color: Color(0xff24B7B1),
                  child: new InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new PatientGenerator()));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
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
              ]),
        ),
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
