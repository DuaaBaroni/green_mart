import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_mart/core/style/colors.dart';

TextStyle getTitleStyle(
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: fontSize ?? 23,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? AppColors.blackColor);
}

TextStyle getBodyStyle(
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: fontSize ?? 16,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? AppColors.blackColor);
}

TextStyle getSmallStyle(
    {double? fontSize, Color? color, FontWeight? fontWeight}) {
  return TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: fontSize ??13,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color ?? AppColors.primaryColor);
}