import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_2/data/constant.dart';
import 'package:task_2/views/widgets/afternoon_cards.dart';
import 'package:task_2/views/widgets/morning_cards.dart';
import 'package:task_2/views/widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? _navIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RColors.bgColor,
      body: SafeArea(
        bottom: true,
        child: Stack(
          children: [
            Positioned(
              top: 47,
              left: 137,
              child: Text(
                "Good Morning Milni!",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  color: RColors.primaryColor,
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
                child: Text("Start your\nday here!", style: RText.titleStyle),
              ),
            ),
            Positioned(
              top: 208,
              left: 30,
              child: Text(
                "For Good Mornings",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  color: RColors.text1Color,
                  fontSize: 10,
                ),
              ),
            ),
            Positioned(
              top: 458,
              left: 30,
              child: Text(
                "For Afternoon Shift",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  color: RColors.text1Color,
                  fontSize: 10,
                ),
              ),
            ),
            Positioned(top: 235, child: MoodCards()),
            Positioned(top: 485, child: Mood2Cards()),

            Positioned(
              left: 0,
              right: 0,
              bottom: 24,
              child: Center(
                child: NavBar(
                  selectedIndex: _navIndex,
                  onTap: (idx) => setState(() => _navIndex = idx),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
