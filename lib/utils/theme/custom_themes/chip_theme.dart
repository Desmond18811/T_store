import 'package:flutter/material.dart';

class TChipTheme {
    TChipTheme._();

    static final LightChipTheme = ChipThemeData(
        disabledColor: Colors.grey.withOpacity(0.4),
        labelStyle: const TextStyle(color: Colors.black),
        selectedColor: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        checkmarkColor: Colors.white
    );

    static final DarkChipTheme = ChipThemeData(
        disabledColor: Colors.grey.withOpacity(0.4),
        labelStyle: const TextStyle(color: Colors.white),
        selectedColor: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        checkmarkColor: Colors.white
    );
}