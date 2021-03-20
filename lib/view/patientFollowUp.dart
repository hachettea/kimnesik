import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("PatientFollowUpState", style: TextStyle(fontSize: 14.3))
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
