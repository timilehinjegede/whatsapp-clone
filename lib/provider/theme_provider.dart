import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme/theme.dart';

enum ThemeType { Light, Dark }

class ThemeModel extends ChangeNotifier {
  // set the defaukt theme to dark theme 
  ThemeData currentTheme = darkThemeData();
  // set the default enum selection to dark theme 
  ThemeType _themeType = ThemeType.Dark;

  // function that changes app theme based on user selection
  changeTheme() {
    // change to light theme if current theme is dark
    if (_themeType == ThemeType.Dark) {
      currentTheme = lightThemeData();
      _themeType = ThemeType.Light;
      return notifyListeners();
    }

    // change to dark theme if current theme is light
    if (_themeType == ThemeType.Light) {
      currentTheme = darkThemeData();
      _themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }
}