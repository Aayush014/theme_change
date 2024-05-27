import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_change/Screens/Provider/theme_provider.dart';
import 'package:theme_change/Screens/Views/setting_screen.dart';
import 'package:theme_change/Utils/global_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool value = preferences.getBool("theme")?? false;
  runApp( MyApp(theme: value,));
}

class MyApp extends StatelessWidget {
  bool theme;
  MyApp ({super.key, required this.theme});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(theme),
      builder:(context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeClass.lightTheme,
        darkTheme: ThemeClass.darkTheme,
        themeMode: Provider.of<ThemeProvider>(context, listen: true).click
            ? ThemeMode.dark
            : ThemeMode.light,
        home: const SettingScreen(),
      ),
    );
  }
}