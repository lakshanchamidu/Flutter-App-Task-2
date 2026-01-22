import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_2/data/constant.dart';
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 47),
              child: Text(
                "Good Morning Milni!",
                style: GoogleFonts.poppins(
                  color: Color.fromRGBO(255, 255, 255, 0.8),
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              textAlign: TextAlign.center,
              "Start yoour\nday here!",
              style: RText.titleStyle,
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  "For Good Mornings",
                  style: RText.swipeStyle,
                ),
              ),
            ),
            SizedBox(height: 20,),
            MoodCards(),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 4),
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
