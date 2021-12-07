import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    print('control menu');
    if (!_scaffoldKey.currentState!.isEndDrawerOpen) {
      print('called');
      _scaffoldKey.currentState!.openEndDrawer();
    }else{
      print('called');
      _scaffoldKey.currentState!.openEndDrawer();
    }
  }
}