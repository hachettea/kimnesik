import 'package:flutter/material.dart';

class Menukine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter des',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        onTap: (int index) {
          setState(() {
          });
        },

        items: [
          new BottomNavigationBarItem(
              icon: new ImageIcon(
                  AssetImage('assets/home.png')
              ),
              label: 'Home'
          ),

          new BottomNavigationBarItem(
              icon: new ImageIcon(
                  AssetImage('assets/patient.png')
              ),
              label: 'Patients'
          ),

          new BottomNavigationBarItem(
              icon: new ImageIcon(
                  AssetImage('assets/cardiogram.png')
              ),
              label: 'Programmes'
          ),

          new BottomNavigationBarItem(
              icon: new ImageIcon(
                  AssetImage('assets/bell.png')
              ),
              label: 'Alertes'
          )


        ],

      ),
      backgroundColor: const Color(0xFFF7F7F7),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(left: 10,top: 35.2,right: 10,bottom: 80),
                  child:Text(
                    "KimnésiK",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27.4),
                  )
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
                        child: Column( // Replace with a Row for horizontal icon + text

                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset('assets/patient.png',height:52.2),
                            Text("Patients",style: TextStyle(fontSize: 14.3))
                          ],
                        ),
                      ),

                      OutlineButton(
                        onPressed: () => {},
                        color: Colors.white,
                        child: Column( // Replace with a Row for horizontal icon + text
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                          Image.asset('assets/cardiogram.png',height:52.2),
                            Text("Programmes",style: TextStyle(fontSize: 14.3))
                          ],
                        ),
                      ),
                    ],
                  )
              ),

            ],
          ),

        ],
      ),
    );
  }
}
