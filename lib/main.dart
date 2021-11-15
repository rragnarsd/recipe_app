import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_api/custom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Recipe App',
        debugShowCheckedModeBanner: false,
        theme: buildThemeData(),
        home: const CustomNavBar(),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      primarySwatch: Colors.blue,
      textTheme: TextTheme(
        headline1: GoogleFonts.openSans(
          fontSize: 28.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          color: Colors.black87,
        ),
        headline4: GoogleFonts.openSans(
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          color: Colors.black87,
        ),
        headline3: GoogleFonts.openSans(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          color: Colors.black87,
        ),
        headline2: GoogleFonts.openSans(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.0,
          color: Colors.black87,
        ),
        bodyText1: GoogleFonts.openSans(
          fontSize: 12.0,
          letterSpacing: 1.0,
          fontWeight: FontWeight.w400,
        ),
        bodyText2: GoogleFonts.openSans(fontSize: 14.0, letterSpacing: 1.0),
        headline5: GoogleFonts.openSans(fontSize: 16.0, letterSpacing: 1.0),
      ),
      splashColor: const Color(0xff1651DA),
    );
  }
}
