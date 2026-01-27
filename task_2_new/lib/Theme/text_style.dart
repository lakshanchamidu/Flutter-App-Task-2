import 'package:flutter/material.dart';
import 'package:task_2_new/Theme/colors.dart';
import 'package:task_2_new/Theme/fonts.dart';

class KTextStyle {
  static const TextStyle splashTitle = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: KColors.primaryText,
  );

  static const TextStyle startbutton = TextStyle(
    fontFamily: AppFonts.primary,
    fontWeight: FontWeight.w600,
    color: KColors.bgColor,
    fontSize: 16,
  );

  static const scrollerbutton = TextStyle(
    fontFamily: AppFonts.primary,
    fontWeight: FontWeight.w500,
    color: KColors.primaryText,
    fontSize: 12,
  );

  static const TextStyle alreadyaccText = TextStyle(
    fontFamily: AppFonts.primary,
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: KColors.primaryText,
  );
  static const TextStyle loginText = TextStyle(
    fontFamily: AppFonts.primary,
    fontWeight: FontWeight.w500,
    fontSize: 10,
    color: KColors.yellowButton,
  );

  static const TextStyle swipeDown = TextStyle(
    fontFamily: AppFonts.primary,
    fontWeight: FontWeight.w300,
    fontSize: 10,
    color: KColors.swipeText,
  );

  static const TextStyle timeStyle = TextStyle(
    fontFamily: AppFonts.primary,
    fontWeight: FontWeight.w400,
    fontSize: 6,
    color: KColors.swipeText,
  );

  static const TextStyle greetingTitle = TextStyle(
    fontFamily: AppFonts.primary,
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: KColors.swipeText,
  );
}
