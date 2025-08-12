import 'package:flutter/material.dart';
import 'package:myapp/core/themes/app_pallet.dart';

class AppTheme {
  static final OutlineInputBorder _border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: AppPallet.transperentColor)  
      );

  static final lightTheme =ThemeData().copyWith(
    scaffoldBackgroundColor: AppPallet.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: AppPallet.greyColor),
      fillColor: AppPallet.whiteColor, 
      enabledBorder: _border,
      focusedBorder: _border,
    )
  );
}