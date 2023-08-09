import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData customDark() {
  final ThemeData dark = ThemeData.dark();
  final font1 = GoogleFonts.ptSans(color: Colors.white);
  return dark.copyWith(
      useMaterial3: true,
      primaryColor: Colors.black38,
      textTheme: GoogleFonts.ptSansTextTheme().copyWith(
          bodySmall: font1,
          bodyMedium: font1,
          bodyLarge: font1,
          titleSmall: font1,
          titleMedium: font1.copyWith(color: Colors.white54),
          titleLarge: font1,
          labelSmall: GoogleFonts.ptSansNarrow(color: Colors.white),
          labelMedium: GoogleFonts.ptSansNarrow(color: Colors.white),
          labelLarge: GoogleFonts.ptSansNarrow(color: Colors.white)),
      appBarTheme: const AppBarTheme(
          titleTextStyle:
              TextStyle(fontWeight: FontWeight.w700, fontSize: 24.0),
          backgroundColor: Color.fromARGB(255, 72, 33, 141)),
      indicatorColor: const Color(0xFF807A68),
      primaryIconTheme: dark.primaryIconTheme.copyWith(
        color: Colors.green,
        size: 20,
      ));
}

ThemeData customLight() {
  final ThemeData light = ThemeData.light();
  final font1 = GoogleFonts.ptSans();
  return light.copyWith(
      useMaterial3: true,
      textTheme: GoogleFonts.ptSansTextTheme().copyWith(
          bodySmall: font1,
          bodyMedium: font1,
          bodyLarge: font1,
          titleSmall: font1,
          titleMedium: font1.copyWith(color: Colors.black54),
          titleLarge: font1,
          labelSmall: GoogleFonts.ptSansNarrow(),
          labelMedium: GoogleFonts.ptSansNarrow(),
          labelLarge: GoogleFonts.ptSansNarrow()),
      appBarTheme: const AppBarTheme(
          titleTextStyle:
              TextStyle(fontWeight: FontWeight.w700, fontSize: 24.0),
          backgroundColor: Color.fromARGB(255, 72, 33, 141)),
      indicatorColor: const Color(0xFF807A68),
      primaryIconTheme: light.primaryIconTheme.copyWith(
        color: Colors.green,
        size: 20,
      ));
}
