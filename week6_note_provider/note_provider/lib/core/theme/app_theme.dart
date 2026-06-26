import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme Configuration
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white, // White text/icons
        elevation: 0,
      ),
      // cardTheme:  CardTheme(
      //   color: Colors.white,
      //   elevation: 2,
      // ),
    );
  }

  // Dark Theme Configuration
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF311B92), // Deep Purple (Colors.purple[900])
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      // cardTheme:  CardTheme(
      //   color: Color(0xFF212121), // Dark Grey (Colors.grey[900])
      //   elevation: 2,
      // ),
    );
  }
}
