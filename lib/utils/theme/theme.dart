import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/textTheme.dart';
import 'package:t_store/utils/theme/elevatedButtonTheme.dart';
import 'package:t_store/utils/theme/appbar_theme.dart';
import 'package:t_store/utils/theme/bottom_sheets_theme.dart';
import 'package:t_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:t_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:t_store/utils/theme/custom_themes/outline_button_theme.dart';

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
    bottomSheetTheme: TBottomSheetTheme.LightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.LightCheckboxTheme,
    chipTheme: TChipTheme.LightChipTheme,
    outlinedbuttonTheme: TOutlinedButtonTheme.LightOutlinedButtonTheme,
    textFieldTheme: TTextFieldTheme.LightInputDecorationTheme
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
    bottomSheetTheme: TBottomSheetTheme.DarkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.DarkCheckboxTheme,
    chipTheme: TChipTheme.DarkChipTheme,
    outlinedbuttonTheme: TOutlinedButtonTheme.DarkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.DarkInputDecorationTheme
 )
}