import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomeLogoText extends StatelessWidget {
  const HomeLogoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
            text: 'Food',
            style: GoogleFonts.montserrat(
              fontSize: 22.0.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
              color: Colors.black87,
            ),
          ),
          TextSpan(
            text: 'Recipe',
            style: GoogleFonts.montserrat(
              fontSize: 22.0.sp,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}