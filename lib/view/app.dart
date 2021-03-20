import 'package:flutter/material.dart';
import 'package:kimnesik/view/tabNavigator.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  String _currentPage = "Home";
  List<String> pageKeys = ["Home", "Patients", "Programs", "Notifications"];
  Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "Home": GlobalKey<NavigatorState>(),
    "Patients": GlobalKey<NavigatorState>(),
    "Programs": GlobalKey<NavigatorState>(),
    "Notifications": GlobalKey<NavigatorState>(),
  };
  int _currentIndex = 0;

  void updateIndex(int index) {
    setState(() {
      _currentPage = pageKeys[index];
      _currentIndex = index;
    });
  }

  void _selectTab(String tabItem, int index) {
    if (tabItem == _currentPage) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
      setState(() {
        _currentPage = pageKeys[index];
        _currentIndex = index;
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentPage].currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentPage != "Home") {
            _selectTab("Home", 1);

            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            _buildOffstageNavigator("Home"),
            _buildOffstageNavigator("Patients"),
            _buildOffstageNavigator("Programs"),
            _buildOffstageNavigator("Notifications"),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff24B7B1),
          unselectedItemColor: Color(0x7F24B7B1),
          selectedFontSize: 12,
          iconSize: 24,
          currentIndex: _currentIndex,
          onTap: (int index) {
            _selectTab(pageKeys[index], index);
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
              label: 'Notifications',
            )
          ],
        ),
        backgroundColor: const Color(0xFFFFFAFA),
      ),
    );
  }

  Widget _buildOffstageNavigator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
        changePage: (int index) {
          updateIndex(index);
        },
      ),
    );
  }
}
