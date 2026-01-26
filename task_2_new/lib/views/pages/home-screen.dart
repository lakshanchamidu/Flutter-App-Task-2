import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_2_new/Theme/colors.dart';
import 'package:task_2_new/Theme/text_style.dart';
import 'package:task_2_new/views/widgets/home_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color morningButton = KColors.yellowButton;
  final Color aftrernoonButton = KColors.blueButton;
  final Color morningGradient = KColors.gradientPink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.bgColor,
      body: SafeArea(
        bottom: true,
        child: Stack(
          children: [
            Positioned(
              top: 47,
              left: 136,
              child: Text(
                "Good Morning Milni!",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: KColors.primaryText,
                  fontSize: 10,
                  height: 1.0,
                ),
              ),
            ),
            Positioned(
              top: 77,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Start your\nday here!",
                  style: KTextStyle.splashTitle,
                ),
              ),
            ),
            Positioned(
              top: 228,
              left: 30,
              child: Text("For Good Mornings", style: KTextStyle.swipeDown),
            ),
            Positioned(
              top: 255,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30),
                    child: Container(
                      width: 2,
                      height: 195,
                      decoration: BoxDecoration(
                        color: KColors.navbarColor
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      MoodCard(
                        title: "New Day\nFresh Start",
                        time: "7.32am",
                        buttonColor: morningButton,
                        gradientColor1: morningButton,
                        gradientColor2: morningGradient,
                      ),
                      SizedBox(height: 12),
                      MoodCard(
                        title: "New Day\nFresh Start",
                        time: "7.32am",
                        buttonColor: morningButton,
                        gradientColor1: morningButton,
                        gradientColor2: morningGradient,
                      ),
                      SizedBox(height: 12),
                      MoodCard(
                        title: "New Day\nFresh Start",
                        time: "7.32am",
                        buttonColor: morningButton,
                        gradientColor1: morningButton,
                        gradientColor2: morningGradient,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 478,
              left: 30,
              child: Text("For Afternoon Shift", style: KTextStyle.swipeDown),
            ),
            Positioned(
              top: 505,
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30),
                    child: Container(
                      width: 2,
                      height: 195,
                      decoration: BoxDecoration(
                        color: KColors.navbarColor
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      MoodCard(
                        title: "Recharge",
                        time: "7.32pm",
                        buttonColor: aftrernoonButton,
                        gradientColor1: morningButton,
                        gradientColor2: aftrernoonButton,
                      ),
                      SizedBox(height: 12),
                      MoodCard(
                        title: "Keep Calm",
                        time: "7.32pm",
                        buttonColor: aftrernoonButton,
                        gradientColor1: morningButton,
                        gradientColor2:aftrernoonButton,
                      ),
                      SizedBox(height: 12),
                      MoodCard(
                        title: "Stay\nFocused",
                        time: "7.32pm",
                        buttonColor: aftrernoonButton,
                        gradientColor1: morningButton,
                        gradientColor2: aftrernoonButton,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
