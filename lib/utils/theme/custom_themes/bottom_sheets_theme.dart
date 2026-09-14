import 'package:flutter/material.dart';

class TBottomSheetsTheme {
    TBottomSheetsTheme._();

    static const LightBottomSheetTheme = BottomSheetThemeData(
        showDragHandle: true,
        backgroundColor: Colors.white,
        modalBackgroundColor: Colors.white,
        constraints: const BoxConstraints(minWidth: double.infinity),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );

    static const DarkBottomSheetTheme = BottomSheetThemeData(
        showDragHandle: true,
        backgroundColor: Colors.black,
        modalBackgroundColor: Colors.black,
        constraints: const BoxConstraints(minWidth: double.infinity),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
}