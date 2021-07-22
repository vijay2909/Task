import 'package:flutter/material.dart';
import 'package:task/palette.dart';

import 'home/home_screen.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primaryColor: Palette.pink500,
        scaffoldBackgroundColor: Palette.pink200,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black, fontSize: 16),
          bodyText2: TextStyle(color: Palette.grey300, fontSize: 15),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Palette.pink500),
        ),
      ),
      home: Home(),
    );
  }
}
