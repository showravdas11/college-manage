import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // fontFamily: GoogleFonts.lato().fontFamily,
        canvasColor: canvousColor,
        floatingActionButtonTheme: FloatingActionButtonThemeData(),
        useMaterial3: true,
      );

  // colors

  static Color canvousColor = Color(0xFFFBE8B5);
  static Color primaryColor = Color(0xFF0E3C6E);
}
