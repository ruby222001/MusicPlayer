import 'package:flutter/material.dart';
import 'package:musicplayer/theme/light_mode.dart';
import 'package:musicplayer/theme/dark_mode.dart';

class ThemeProvider extends ChangeNotifier{

  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;


  set themeData(ThemeData themeData){
    _themeData = themeData;
    //notify ui
    notifyListeners();
  }
  void toggleTheme(){
    if(_themeData == lightMode){
      themeData = darkMode;
    }
    else{
      themeData = lightMode;
    }
  }
}