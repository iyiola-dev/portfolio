import 'package:flutter/material.dart';
import 'package:portfolio/constant/appthemeDark.dart';
import 'package:portfolio/constant/appthemelight.dart';

class AppTheme extends ChangeNotifier {
  ThemeData _appTheme = appthemelight;
  bool _isDark = false;

  ThemeData get appTheme => _appTheme;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    if (_isDark) {
      _appTheme = appthemelight;
      notifyListeners();
    } else {
      _appTheme = appThemeDark;
      notifyListeners();
    }
  }

  void setTheme() {
    _isDark = isDark;
    if (isDark) {
      _appTheme = appThemeDark;
      notifyListeners();
    } else {
      _appTheme = appthemelight;
      notifyListeners();
    }
  }
}
