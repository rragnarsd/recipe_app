import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/provider/recipe_provider.dart';
import 'package:sizer/sizer.dart';

import 'custom_navbar.dart';
import 'models/saved_recipes.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<ListOfRecipes>(create: (_) => ListOfRecipes(),),
       /* Provider<SavedRecipes>(create: (_) => SavedRecipes(),)*/
      ],

      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Recipe App',
        debugShowCheckedModeBanner: false,
        theme: buildThemeData(),
        home: const CustomNavBar(),
      );
    });
  }

  ThemeData buildThemeData() {
    return ThemeData(
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
          bodyText2:
              GoogleFonts.openSans(fontSize: 10.0.sp, letterSpacing: 1.0),
          headline5:
              GoogleFonts.openSans(fontSize: 12.0.sp, letterSpacing: 1.0),
        ),
        splashColor: const Color(0xff084f57),
        iconTheme: const IconThemeData(
          color: Color(0xff084f57),
        ));
  }
}
