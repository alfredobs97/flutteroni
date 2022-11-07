import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static theme() => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0XFFDC3A08),
          secondary: const Color(0XFF4F4F4F),
        ),
        textTheme: GoogleFonts.jostTextTheme(),
      );
}
