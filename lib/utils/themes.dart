import 'package:flutter/material.dart';

final chipBgColor = const Color(0xffbf0f0f0);
final starColor = Color(0xffbffcd2a);

var sectionTitle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontSize: 14.0);

var chipLabel = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    fontSize: 11.0);

var themeRYDE = ThemeData(
  primaryColor: Colors.white,
  accentColor: Colors.pinkAccent,
  buttonTheme: ButtonThemeData(
      buttonColor: Colors.pinkAccent, textTheme: ButtonTextTheme.primary),
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: Colors.black),
  chipTheme: ChipThemeData(
      backgroundColor: chipBgColor,
      disabledColor: Colors.black87,
      selectedColor: Colors.pink,
      secondarySelectedColor: Colors.pinkAccent,
      labelPadding: EdgeInsets.only(left: 8, right: 8),
      padding: EdgeInsets.all(2),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32))),
      labelStyle: chipLabel,
      secondaryLabelStyle: chipLabel.apply(color: Colors.white),
      brightness: Brightness.light),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
    ),
    border: const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
    ),
  ),
);

var themeCollector = ThemeData(
    primaryColor: Colors.black,
    accentColor: Colors.white,
    buttonTheme: ButtonThemeData(
        buttonColor: Colors.black, textTheme: ButtonTextTheme.primary),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Colors.black));
