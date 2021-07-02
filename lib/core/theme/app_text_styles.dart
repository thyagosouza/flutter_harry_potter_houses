import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_houses_starting/core/core.dart';

class AppTextStyles {
  static TextStyle bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1;
  }

  static final TextStyle splashText = GoogleFonts.karla(
    color: AppColors.white,
    fontSize: 25,
    //fontWeight: FontWeight.w500,
  );
  static final TextStyle questionText = GoogleFonts.karla(
    color: AppColors.white,
    fontSize: 25,
    //fontWeight: FontWeight.w500,
  );
}
