import 'package:flutter/material.dart';
import 'package:todo_list/screens/home.dart';
import 'package:todo_list/themes/dark_theme.dart';
import 'package:todo_list/themes/light_theme.dart';

void main(){
  runApp(MaterialApp(
    title: 'ToDo List',
    home: const Home(),
    themeMode: ThemeMode.system,
    theme: darkTheme(),
    darkTheme: lightTheme(),
    debugShowCheckedModeBanner: false,
  ));

}