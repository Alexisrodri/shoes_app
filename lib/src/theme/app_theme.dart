import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme(Brightness theme) => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.white,
      brightness: theme,
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ));
}
