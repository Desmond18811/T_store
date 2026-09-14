import 'package:flutter/material.dart';

class TChipTheme {
    TChipTheme._();

    static const LightChipTheme = ChipThemeData(
        disabledColor: Colors.grey.withOpacity(0.4),
        labelStyle: cnst TextStyle(color: Colors.black)
        selectedColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        checkmarkColor: Colors.white
    );

    static const DarkChipTheme = ChipThemeData(
        disabledColor: Colors.grey.withOpacity(0.4),
        labelStyle: cnst TextStyle(color: Colors.white),
        selectedColor: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        checkmarkColor: Colors.white
    );
}