import 'package:flutter/material.dart';
class TColors
{
  TColors._();

//gradient
 static const gradient = LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
               Color.fromARGB(255, 186, 0, 0),
               Color.fromARGB(175, 68, 2, 107),
              ],
            );
  //app basic colors
  static const Color primary = Color(0xFF00B0F5);
  static const Color secondary =Color(0xFFEDEDED);
  static const Color accent = Color(0xFFEDEDED);

// text Colors
  static const Color textprimary = Color(0xFF333333);
  static const Color textsecondary = Color(0xFF6c757D);
  static const Color textWhite = Colors.white;

  // Bacground Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

//Background Container Colors
 static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = TColors.white.withOpacity(0.1);

//Button Colors
 static const Color buttonPrimary = Color(0xFFA50000);
  static const Color buttonSecondary = Color.fromARGB(255, 4, 22, 29);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  //border colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
    static const Color borderSecondary = Color(0xFFE6E6E6);

    //error and validation colors
      static const Color error = Color(0xFFD32F2F);
      static const Color success = Color(0xFF388E3C);
      static const Color warning = Color(0xFFF57C00);
      static const Color info = Color(0xFF1976D2);

    //neutral shades
      static const Color black = Color(0xFF232323);
      static const Color darkerGrey = Color(0xFF4F4F4F);
      static const Color darkGrey = Color(0xFF939393);
      static const Color grey = Color(0xFFE0E0E0);
      static const Color softGrey = Color(0xFFF4F4F4);
      static const Color lightGrey = Color(0xFFF9F9F9);
      static const Color white = Color(0xFFFFFFFF);
}