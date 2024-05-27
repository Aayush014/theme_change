import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {

  bool click = true;

  void changeTheme(bool value) {
    click = value;
    notifyListeners();
  }

  // Future<void> toggleThemePreference(bool value) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setBool('isDark', value);
  //   click = value;
  //   notifyListeners();
  // }
  Future<void> setTheme(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("theme", value);
  }

  Future<void> getTheme () async {
    SharedPreferences preferences= await SharedPreferences.getInstance();
    click = preferences.getBool("theme") ?? false;
    notifyListeners();
  }
  ThemeProvider(bool theme){
    click = theme;
    notifyListeners();
  }
}