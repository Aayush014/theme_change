import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_change/Screens/Provider/theme_provider.dart';
import 'package:theme_change/Screens/Views/setting_screen.dart';
import 'package:theme_change/Utils/global_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder:(context, child) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeClass.lightTheme,
        darkTheme: ThemeClass.darkTheme,
        themeMode: Provider.of<ThemeProvider>(context, listen: true).click
            ? ThemeMode.dark
            : ThemeMode.light,
        home: SettingScreen(),
      ),
    );
  }
}