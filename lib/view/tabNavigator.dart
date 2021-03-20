import 'package:flutter/material.dart';
import 'package:kimnesik/view/programGenerator.dart';
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
      child = PageMenuKine(
        changePage: (int index) {
          changePage(index);
        },
      );
    else if (tabItem == "PageProgrammes")
      child = PageProgrammes();
    else if (tabItem == "PageCreerProgramme")
      child = PageCreerProgramme();
    else if (tabItem == "PageCreerProgramme") child = PageCreerProgramme();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
