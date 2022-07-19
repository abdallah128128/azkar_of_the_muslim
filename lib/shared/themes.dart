import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const primaryColor = Color(0xffa28a64);
const myWhite = Colors.white;
const Color scaffoldColor = Color(0xffedecef);

ThemeData lightMode = ThemeData(
  fontFamily: 'Cairo',
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.black12,
      statusBarIconBrightness: Brightness.dark,
    ),
    color: primaryColor,
    elevation: 0,
    titleTextStyle: TextStyle(
      fontFamily: 'Cairo',
      color: Colors.white,
      fontSize: 23,
      fontWeight: FontWeight.bold,
    ),
  ),
  scaffoldBackgroundColor: scaffoldColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: primaryColor,
    unselectedItemColor: Colors.black54,
    backgroundColor: Colors.white54,
    elevation: 30,
  ),
);
