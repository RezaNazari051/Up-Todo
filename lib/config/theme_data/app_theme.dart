import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../responsive.dart';
import '../shape/shape.dart';
import 'app_color.dart';

class CustomTheme {
  static ThemeData lightTheme = ThemeData.light(useMaterial3: false).copyWith(
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          fontSize: Responsive.isDesktop()
              ? 14.sp
              : Responsive.isTablet()
                  ? 16.sp
                  : 18.sp,
          fontFamily: 'IrBold',
          color: Colors.black),
      bodyMedium: TextStyle(
          fontSize: Responsive.isDesktop()
              ? 12.sp
              : Responsive.isTablet()
                  ? 14.sp
                  : 16.sp,
          fontFamily: 'IrReg',
          color: Colors.black),
      bodySmall: TextStyle(
          fontFamily: 'IrReg',
          fontSize: Responsive.isDesktop()
              ? 5.sp
              : Responsive.isTablet()
                  ? 13.sp
                  : 14.sp,
          color: Colors.black),

      titleLarge:TextStyle(
        fontFamily: 'IrReg',
        fontSize: Responsive.isDesktop()
            ? 15.sp
            : Responsive.isTablet()
            ? 23.sp
            : 24.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black),
    ),

    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    dialogTheme: DialogTheme(shape: getShapeFunc(10), elevation: 5),
    iconTheme: const IconThemeData().copyWith(
      color: iconColor,
      size: ScreenUtil().setSp(20),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor, elevation: 5),

    //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        shape: getShapeFunc(10),
        alignment: Alignment.center,
        backgroundColor: elevatedButtonBackgroundColor,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: getShapeFunc(10),
        alignment: Alignment.center,
        side: const BorderSide(color: primaryColor),
        foregroundColor: primaryColor,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: getShapeFunc(10),
        alignment: Alignment.center,
        foregroundColor: primaryColor,
      ),
    ),

    appBarTheme: const AppBarTheme(
        centerTitle: false,
        color: whiteColor,
        iconTheme: IconThemeData(color: darkColor)),

    //
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: textFieldColor,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.5),
        gapPadding: 10,
        borderSide: const BorderSide(color: primary2Color, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.5),
        gapPadding: 10,
        borderSide: const BorderSide(color: Colors.red, width: 2),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.5),
        gapPadding: 10,
        borderSide: const BorderSide(color: Colors.red, width: 2),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.5),
        gapPadding: 10,
        borderSide: BorderSide(color: darkColor.withOpacity(0.0), width: 1),
      ),
      disabledBorder: OutlineInputBorder(
        gapPadding: 10,
        borderRadius: BorderRadius.circular(7.5),
        borderSide: BorderSide(color: darkColor.withOpacity(0.0), width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        gapPadding: 10,
        borderRadius: BorderRadius.circular(7.5),
        borderSide: BorderSide(color: darkColor.withOpacity(0.0), width: 1),
      ),
      iconColor: primary2Color,
      suffixIconColor: primary2Color,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    ),
  );
 
 
 
 
 
 
 
 
 
  //! dark theme
  static ThemeData darkTheme = ThemeData.dark(useMaterial3: false).copyWith(
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.lato(
        color: Colors.white,
        fontSize: Responsive.isDesktop() ? 12.sp : 16.sp,
      ),
      bodySmall: GoogleFonts.lato(
          fontSize: Responsive.isDesktop()
              ? 10.sp
              : Responsive.isTablet()
                  ? 13
                  : 14.sp,
          color: Colors.white),
    ),

    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBackgroundColor,
    dialogTheme: DialogTheme(shape: getShapeFunc(10), elevation: 5),
    iconTheme: const IconThemeData().copyWith(
      color: Colors.white,
      size: ScreenUtil().setSp(20),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor, elevation: 5),

    //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.red,
        shape: getShapeFunc(10),
        alignment: Alignment.center,
        backgroundColor: primaryColor,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: getShapeFunc(10),
        alignment: Alignment.center,
        side: const BorderSide(color: primaryColor),
        foregroundColor: primaryColor,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: getShapeFunc(10),
        alignment: Alignment.center,
        foregroundColor: primaryColor,
      ),
    ),

    appBarTheme: AppBarTheme(
      centerTitle: false,
      color: Colors.grey.shade700,
      iconTheme: const IconThemeData(color: darkColor),
    ),

    //
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: textFieldColor,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.5),
        gapPadding: 10,
        borderSide: const BorderSide(color: primary2Color, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.5),
        gapPadding: 10,
        borderSide: const BorderSide(color: Colors.red, width: 2),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.5),
        gapPadding: 10,
        borderSide: const BorderSide(color: Colors.red, width: 2),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7.5),
        gapPadding: 10,
        borderSide: BorderSide(color: darkColor.withOpacity(0.0), width: 1),
      ),
      disabledBorder: OutlineInputBorder(
        gapPadding: 10,
        borderRadius: BorderRadius.circular(7.5),
        borderSide: BorderSide(color: darkColor.withOpacity(0.0), width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        gapPadding: 10,
        borderRadius: BorderRadius.circular(7.5),
        borderSide: BorderSide(color: darkColor.withOpacity(0.0), width: 1),
      ),
      iconColor: primary2Color,
      suffixIconColor: primary2Color,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    ),
  );
}
