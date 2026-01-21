import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RText {
  static final TextStyle titleStyle = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: Color.fromRGBO(255, 255, 255, 1),
  );
  static final TextStyle buttonStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(38, 36, 36, 1),
  );
  static final TextStyle loginStyle = GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(255, 255, 255, 1),
  );
  static final TextStyle login2Style = GoogleFonts.poppins(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(243, 210, 23, 1),
  );
  static final TextStyle swipeStyle = GoogleFonts.poppins(
    fontSize: 10,
    height: 1.0,
    fontWeight: FontWeight.w300,
    color: Color.fromRGBO(255, 255, 255, 0.5),
  );
  static final TextStyle chipSelectedStyle = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  static final TextStyle chipUnselectedStyle = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Color.fromRGBO(255, 255, 255, 1),
  );
}

class RColors {
  static const Color primaryColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color secondColor = Color.fromRGBO(101, 98, 98, 1);
  static const Color text1Color = Color.fromRGBO(255, 255, 255, 0.5);
  static const Color borderColor = Color.fromRGBO(255, 255, 255, 0.3);
  static const Color backButton = Color.fromRGBO(0, 0, 0, 1);
  static const Color bgColor = Color.fromRGBO(38, 36, 36, 1);
  static const Color textColor = Color.fromRGBO(38, 36, 36, 1);
  static const Color morningButton = Color.fromRGBO(243, 210, 23, 1);
  static const Color afternoonButton = Color.fromRGBO(48, 193, 255, 1);
  static const LinearGradient gradientMorning = LinearGradient(
    colors: [Color.fromRGBO(243, 210, 23, 1), Color.fromRGBO(255, 48, 241, 1)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const LinearGradient gradienWelcome = LinearGradient(
    colors: [Color.fromRGBO(243, 210, 23, 1), Color.fromRGBO(255, 48, 241, 1)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const LinearGradient selectPageScroller = LinearGradient(
    colors: [Color.fromRGBO(221, 171, 230, 1), Color.fromRGBO(255, 48, 241, 1)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const LinearGradient gradientAfternoon = LinearGradient(
    colors: [Color.fromRGBO(243, 210, 23, 1), Color.fromRGBO(48, 193, 255, 1)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const LinearGradient gradienLine = LinearGradient(
    colors: [Color.fromRGBO(243, 210, 23, 1), Color.fromRGBO(255, 48, 241, 1)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
