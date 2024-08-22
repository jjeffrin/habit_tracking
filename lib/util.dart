import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme =
      GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme =
      GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
      bodyLarge: GoogleFonts.jetBrainsMono(
          fontWeight: FontWeight.w600, fontSize: 20.0),
      bodyMedium: GoogleFonts.jetBrainsMono(
          fontWeight: FontWeight.w600, fontSize: 16.0),
      bodySmall: bodyTextTheme.bodySmall,
      labelLarge: bodyTextTheme.labelLarge,
      labelMedium: bodyTextTheme.labelMedium,
      labelSmall: bodyTextTheme.labelSmall,
      headlineLarge: GoogleFonts.jetBrainsMono(
          fontWeight: FontWeight.w800, fontSize: 24.0));
  return textTheme;
}

Widget addVerticalGap({double? gap}) {
  return SizedBox(
    height: gap ?? 10.0,
  );
}

Widget addHorizontalGap({double? gap}) {
  return SizedBox(
    width: gap ?? 10.0,
  );
}
