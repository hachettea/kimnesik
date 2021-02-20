import 'package:flutter/material.dart';
import 'package:kimnesik/view/menukine.dart';
import 'package:kimnesik/view/listeprogrammes.dart';

class PagePrincipale extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PagePrincipaleState();
  }
}

class _PagePrincipaleState extends State<PagePrincipale> {
  int selectedNavBarIndex = 0;

  getSelectedNavBarIndex(int pos) {
    switch (pos) {
      case 0:
        return new Menukine();
      case 1:
        return; //return new ListePatients();
      case 2:
        return new ListeProgrammes();
      case 3:
      //return new ThirdFragment();

      default:
        return new Text("");
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff24B7B1),
        unselectedItemColor: Color(0x7F24B7B1),
        selectedFontSize: 12,
        iconSize: 24,
        currentIndex: selectedNavBarIndex,
        onTap: (int index) {
          setState(() {
            selectedNavBarIndex = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
              icon: new ImageIcon(AssetImage('assets/home.png')),
              label: 'Accueil'),
          new BottomNavigationBarItem(
              icon: new ImageIcon(AssetImage('assets/patient.png')),
              label: 'Patients'),
          new BottomNavigationBarItem(
              icon: new ImageIcon(AssetImage('assets/cardiogram.png')),
              label: 'Programmes'),
          new BottomNavigationBarItem(
            icon: new ImageIcon(AssetImage('assets/bell.png')),
            label: 'Alertes',
          )
        ],
      ),
      backgroundColor: const Color(0xFFFFFAFA),
      body: getSelectedNavBarIndex(selectedNavBarIndex),
    );
  }
}
