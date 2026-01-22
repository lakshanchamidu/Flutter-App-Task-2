import 'package:flutter/material.dart';
import 'package:task_2/data/constant.dart';
import 'package:task_2/views/pages/select_screen.dart';
import 'package:task_2/views/widgets/mood_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
          Padding(
            padding: EdgeInsets.only(top: 105),
            child: Text(
              textAlign: TextAlign.center,
              "How are you\nfeeling today?",
              style: RText.titleStyle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 30),
            child: SizedBox(
              height: 37,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: moods.length,
                itemBuilder: (context, index) {
                  return MoodButton(
                    text: moods[index],
                    buttonColor: RColors.gradienWelcome,
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex =index;
                      });
                    },
                  );
                },
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text("Swipe to Learn More", style: RText.swipeStyle),
          ),
          Stack(
            children: [
              SizedBox(
                width: 403,
                height: 453,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80),
                  ),
                  child: Image.asset(
                    'assets/images/welcome.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: -80,
                left: 0,
                right: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: RColors.bgColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 29,
                    height: 2,
                    decoration: BoxDecoration(
                      color: RColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 100,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    width: 247,
                    height: 46,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PlayScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: RColors.morningButton,
                      ),
                      child: Text('Get Started', style: RText.buttonStyle),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?", style: RText.loginStyle),
                      Text(" Log In", style: RText.login2Style),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
