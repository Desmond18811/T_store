import 'package:flutter/material.dart';

class TTextFieldTheme{
    TTextFieldTheme._();

    static final LightInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),

      hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
      floatingLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Colors.grey, width: 1)),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Colors.red, width:1)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Colors.blue, width: 1)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Colors.grey, width: 1)),
    );

    static final DarkInputDecorationTheme = InputDecorationTheme(
        errorMaxLines: 3,
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.grey,
        labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),

        hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
        floatingLabelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
    
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Colors.grey, width: 1)),
        errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Colors.red, width:1)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Colors.blue, width: 1)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: const BorderSide(color: Colors.grey, width: 1)),
    );
}