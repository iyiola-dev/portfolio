import 'package:flutter/material.dart';
import 'package:portfolio/constant/appthemeDark.dart';
import 'package:portfolio/constant/appthemelight.dart';

class AppTheme extends ChangeNotifier {
  ThemeData _appTheme = appthemelight;
  bool _isDark = false;

  ThemeData get appTheme => _appTheme;
  bool get isDark => _isDark;

  void toggleTheme() {
    if (_isDark) {
      _appTheme = appthemelight;
    } else {
      _appTheme = appThemeDark;
    }
    _isDark = !_isDark;
    notifyListeners();
  }

  void setTheme() {
    if (isDark) {
      _appTheme = appThemeDark;
    } else {
      _appTheme = appthemelight;
    }
    _isDark = isDark;
    notifyListeners();
  }
}
