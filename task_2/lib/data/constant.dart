import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RText {
  static final TextStyle titleStyle = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Color.fromRGBO(255, 255, 255, 1),
  );
}

class RColors {
  static const Color primaryColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color morningButton = Color.fromRGBO(243, 210, 23, 1);
  static const Color afternoonButton = Color.fromRGBO(48, 193, 255, 1);
  static const LinearGradient gradientMorning = LinearGradient(
    colors: [Color.fromRGBO(243, 210, 23, 1), Color.fromRGBO(255, 48, 241, 1)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const LinearGradient gradientAfternoon = LinearGradient(
    colors: [Color.fromRGBO(243, 210, 23, 1), Color.fromRGBO(48, 193, 255, 1)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
