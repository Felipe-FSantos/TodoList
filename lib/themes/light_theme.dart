import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
      colorScheme: const ColorScheme.light(
          primary: Colors.purple, secondary: Colors.orange),
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(color: Colors.pinkAccent),
      scaffoldBackgroundColor: Colors.grey[100],
      iconTheme: const IconThemeData(color: Colors.white),
      hintColor: Colors.orange,
      floatingActionButtonTheme: //Botão flutuante
      const FloatingActionButtonThemeData(backgroundColor: Colors.orange));
}
