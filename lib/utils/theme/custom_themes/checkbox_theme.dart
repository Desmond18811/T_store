import 'package:flutter/material.dart';

class TCheckboxTheme{
    TCheckboxTheme._();

    static const LightCheckboxTheme = CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        checkColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)){
                return Colors.white;
            }else{
                return Colors.black;
            }
        }),
        fillColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)){
                return Colors.blue;
            }else{
                return Colors.transparent;
            }
        }),
        
    );

    static const DarkCheckboxTheme = CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        checkColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)){
                return Colors.white;
            }else{
                return Colors.black;
            }
        }),
        fillColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.selected)){
                return Colors.blue;
            }else{
                return Colors.transparent;
            }
        }),
    );
}