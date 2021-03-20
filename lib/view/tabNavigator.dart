import 'package:flutter/material.dart';
import 'package:kimnesik/view/notifications.dart';
import 'package:kimnesik/view/patients.dart';
import 'package:kimnesik/view/home.dart';
import 'package:kimnesik/view/programs.dart';

typedef void IntCallback(int id);

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem, this.changePage});
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;
  final IntCallback changePage;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (tabItem == "Home")
      child = Home(
        changePage: (int index) {
          changePage(index);
        },
      );
    else if (tabItem == "Patients")
      child = Patients();
    else if (tabItem == "Programs")
      child = Programs();
    else if (tabItem == "Notifications") child = Notifications();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
