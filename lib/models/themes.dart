import 'package:flutter/material.dart';

class MyAppTheme {
  static ThemeData appThemeLight() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.light,

      // Defines theme for AppBar
      appBarTheme: const AppBarTheme(
        // AppBar's color.
        color: Colors.white,

        // Theme for AppBar's icons.
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),

      // Theme for app's icons.
      iconTheme: IconThemeData(
        color: Colors.indigo.shade600,
      ),

      // floatingActionButtonTheme for light mode.
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        //White background
        backgroundColor: Colors.white,

        //Black plus (+) sign for FAB
        foregroundColor: Colors.black,
      ),
    );
  }

  static ThemeData appThemeDark() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.dark,

      //Theme for app bar
      appBarTheme: const AppBarTheme(
        //AppBar's background color is dark this time
        color: Colors.black,

        //Light color for the app bar's icons
        iconTheme: IconThemeData(color: Colors.white),
      ),

      //App's icons are colored in orange color
      iconTheme: const IconThemeData(
        color: Colors.orange,
      ),

      // floatingActionButtonTheme for dark mode.
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        //dark background for FAB
        backgroundColor: Colors.black,

        //White plus (+) sign for FAB
        foregroundColor: Colors.white,
      ),
    );
  }
}
