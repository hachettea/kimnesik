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

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Stack(
        children: <Widget>[
          Column(
          children: <Widget>[
            Container(
            padding: const EdgeInsets.only(left: 10,top: 35.2,right: 10,bottom: 80),
            child:Text("KimnésiK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27.4),)
            ),
            Container(
            height: 220,
            child: GridView.count(
            primary: false,
            padding: const EdgeInsets.only(left: 50,top: 0,right: 50,bottom: 0),
            mainAxisSpacing: 10,
            crossAxisCount: 1,
            childAspectRatio: 2.11,
            children: <Widget>[
              OutlineButton(
              onPressed: () => {},
              color: Colors.white,
              child:
                Column( // Replace with a Row for horizontal icon + text
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/patient.png',height:52.2),
                    Text("Patients",style: TextStyle(fontSize: 14.3))
                  ]),
              ),
              OutlineButton(
              onPressed: () => {},
              color: Colors.white,
              child:
                Column( // Replace with a Row for horizontal icon + text
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/cardiogram.png',height:52.2),
                  Text("Programmes",style: TextStyle(fontSize: 14.3))
                ]),
              ),
            ])
          ),
        ]),
      ]),
    );
  }
}
