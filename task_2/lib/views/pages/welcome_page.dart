import 'package:flutter/material.dart';
import 'package:task_2/data/constant.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final List<String> moods = [
    'Joyful',
    'Cheerful',
    'Content',
    'Calm',
    'Excited',
    'Relaxed',
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RColors.bgColor,
      body: Stack(
        children: [
          Positioned(
            top: 105,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                "How are you\nfeeling today?",
                textAlign: TextAlign.center,
                style: RText.titleStyle,
              ),
            ),
          ),

          Positioned(
            top: 239,
            left: 31,
            child: SizedBox(
              height: 37,
              width: 344,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: moods.length,
                itemBuilder: (context, index) {
                  final bool isSelected = selectedIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: _moodButton(moods[index], isSelected),
                  );
                },
              ),
            ),
          ),

          Positioned(
            top: 324,
            left: 0,
            right: 0,
            child: Center(
              child: Text("Swipe to Learn More", style: RText.swipeStyle),
            ),
          ),
          Positioned(
            top: 394,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 65,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectedIndex == -1 ? RColors.bgColor : Colors.white,
                  shape: BoxShape.circle,
                ),
                child: selectedIndex == -1
                    ? const SizedBox.shrink()
                    : Text(
                        moods[selectedIndex],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: -13,
            right: 0,
            child: SizedBox(
              width: 403,
              height: 453,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(80),
                  topRight: Radius.circular(80),
                ),
                child: Image.asset(
                  'assets/images/welcome.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          Positioned(
            top: 671,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: SizedBox(
                height: 46,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: RColors.morningButton,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: selectedIndex == -1
                      ? null
                      : () {
                          debugPrint("Selected mood: ${moods[selectedIndex]}");
                        },
                  child: Text(
                    "Get Started",
                    textAlign: TextAlign.center,
                    style: RText.buttonStyle,
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 728,
            left: 0,
            right: 0,
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: RText.loginStyle),
                  Text(" LogIn", style: RText.login2Style),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _moodButton(String text, bool selected) {
    return Container(
      width: 84,
      height: 37,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.fromLTRB(15, 6, 15, 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: selected ? RColors.gradienWelcome : null,
        color: selected ? null : Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 2, color: Colors.white24),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: selected ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
