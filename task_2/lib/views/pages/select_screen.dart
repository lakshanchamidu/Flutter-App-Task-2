import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_2/data/constant.dart';
import 'package:task_2/views/widgets/horizontal_scroller.dart';
import 'package:task_2/views/widgets/mood_button.dart';
import 'package:task_2/views/widgets/nav_bar.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  int? _navIndex;
  int selectedIndex = -1;
  final List<String> moods = [
    'Joyful',
    'Cheerful',
    'Content',
    'Calm',
    'Excited',
    'Relaxed',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RColors.bgColor,
      body: Column(
        children: [
          Stack(
            children: [
              Positioned(
                child: SizedBox(
                  width: 447,
                  height: 482,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    ),
                    child: Image.asset(
                      'assets/images/hero_image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 24.48,
                        height: 24.48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black, width: 1.5),
                        ),
                        child: const Icon(
                          Icons.arrow_back_outlined,
                          size: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => {},
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 84,
                        height: 37,
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Save",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            textAlign: TextAlign.center,
            "Select your\ntoday's mood",
            style: RText.titleStyle,
          ),

          Spacer(),
          SizedBox(
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      HorizontalScroller(),
                      HorizontalScroller(),
                    ],
                  ),
                ),
                Container(
                  width: 2,
                  height: 110,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(243, 210, 23, 1),
                        Color.fromRGBO(255, 48, 241, 1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: SizedBox(
              height: 37,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: moods.length,
                itemBuilder: (context, index) {
                  return MoodButton(
                    text: moods[index],
                    buttonColor: RColors.selectPageScroller,
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Center(
              child: NavBar(
                selectedIndex: _navIndex,
                onTap: (idx) => setState(() => _navIndex = idx),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
