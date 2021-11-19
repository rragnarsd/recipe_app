import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomTheme {
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: const Color(0xff084f57),
      textTheme: TextTheme(
        headline1: GoogleFonts.openSans(
          fontSize: 22.0.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          color: Colors.black87,
        ),
        headline4: GoogleFonts.openSans(
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          color: Colors.black87,
        ),
        headline3: GoogleFonts.openSans(
          fontSize: 10.0.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          color: Colors.black87,
        ),
        headline2: GoogleFonts.openSans(
          fontSize: 12.0.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          color: Colors.black87,
        ),
        bodyText1: GoogleFonts.openSans(
          fontSize: 10.0.sp,
          letterSpacing: 1.0,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: GoogleFonts.openSans(fontSize: 10.0.sp, letterSpacing: 1.0),
        headline5: GoogleFonts.openSans(fontSize: 12.0.sp, letterSpacing: 1.0),
      ),
      splashColor: const Color(0xff084f57),
      iconTheme: const IconThemeData(
        color: Color(0xff084f57),
      ),
  );
}
