import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/textTheme.dart'
import 'package:t_store/utils/theme/elevatedButtonTheme.dart',

class TAppTheme {
 TAppTheme._();

 static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
   // cardColor: Colors.grey[200],
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.LightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.LightAppBarTheme,
 );

 static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    //cardColor: Colors.grey[200],
    textTheme: TTextTheme.DarkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.DarkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.DarkAppBarTheme,
}