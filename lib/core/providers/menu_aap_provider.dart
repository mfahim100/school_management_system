import 'package:flutter/material.dart';

class MenuAapProvider extends ChangeNotifier {



  int _indexTab=0;
  int get indexTab=>_indexTab;
  setIndexTab(int val){
    _indexTab=val;
    notifyListeners();
  }



  //
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  // void controlMenu() {
  //   if (!_scaffoldKey.currentState!.isDrawerOpen) {
  //     _scaffoldKey.currentState!.openDrawer();
  //   }
  // }
}
