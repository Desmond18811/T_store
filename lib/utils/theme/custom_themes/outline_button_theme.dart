import 'package:flutter/material.dart';

class TOutlinedButtonTheme{
    TOutlinedButtonTheme._();

    static const LightOutlinedButtonTheme = OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),  
        side: BorderSide(color: Colors.black),           
        )
    )

    static const DarkOutlinedButtonTheme = OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                foregroundColor: Colors.white,
                backgroundColor: Colors.transparent,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),  
                side: BorderSide(color: Colors.white),  
            )
        )
    )
}
