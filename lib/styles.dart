import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HTStyles {
  static TextStyle getAppTitleFont() {
    return GoogleFonts.inter(fontWeight: FontWeight.w900);
  }

  static TextStyle getBodyTitleFont() {
    return GoogleFonts.inter(fontSize: 20.0, fontWeight: FontWeight.w700);
  }

  static TextStyle getBodyNormalFont() {
    return GoogleFonts.inter(fontWeight: FontWeight.w500, fontSize: 14.0);
  }

  static TextStyle getBodySmallFont() {
    return GoogleFonts.inter();
  }
}
