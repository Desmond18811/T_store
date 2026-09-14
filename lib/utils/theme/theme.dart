import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/custom_themes/text_theme.dart';
import 'package:t_store/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:t_store/utils/theme/custom_themes/bottom_sheets_theme.dart';
import 'package:t_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:t_store/utils/theme/custom_themes/chip_theme.dart';
import 'package:t_store/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:t_store/utils/theme/custom_themes/text_field_theme.dart';

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
    bottomSheetTheme: TBottomSheetsTheme.LightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.LightCheckboxTheme,
    chipTheme: TChipTheme.LightChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.LightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.LightInputDecorationTheme
 );

 static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    //cardColor: Colors.grey[200],
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.DarkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.DarkAppBarTheme,
    bottomSheetTheme: TBottomSheetsTheme.DarkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.DarkCheckboxTheme,
    chipTheme: TChipTheme.DarkChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.DarkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.DarkInputDecorationTheme
 );
}