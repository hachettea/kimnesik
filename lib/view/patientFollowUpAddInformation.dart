import 'package:flutter/material.dart';

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
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("PatientFollowUpAddInformation", style: TextStyle(fontSize: 14.3))
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
