import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTheme {
  static const Color _whiteColor = Color(0xffFFFFFF);
  static const Color _blackColor = Color(0xff242424);

  static ThemeData light = ThemeData(
    // ? FontFamily

    fontFamily: GoogleFonts.inter().fontFamily,

    // ? Elevated Buttons Style

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: const Color(0XFF7BA3F2),
        textStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: _whiteColor,
        ),
      ),
    ),

    // ? Appbars Style

    appBarTheme: const AppBarTheme(
        foregroundColor: _blackColor,
        backgroundColor: _whiteColor,
        elevation: 2,
        titleTextStyle: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: _blackColor)),

    // ? Scaffold background Color

    scaffoldBackgroundColor: Colors.blue.shade100,

    // ? Floating action Buttons styles

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0XFF7BA3F2),
      unselectedItemColor: Color(0XFF7BA3F2),
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}
