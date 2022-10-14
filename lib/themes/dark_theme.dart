import 'package:flutter/material.dart';

ThemeData darkTheme() {
  return ThemeData(
      colorScheme: const ColorScheme.dark(
          primary: Colors.black, secondary: Colors.orange),
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(color: Colors.white12),
      scaffoldBackgroundColor: Colors.grey[700], //ou Colors.white30
      iconTheme: const IconThemeData(color: Colors.white),
      hintColor: Colors.orange,
      floatingActionButtonTheme: //Botão flutuante
          const FloatingActionButtonThemeData(backgroundColor: Colors.white70));
}
