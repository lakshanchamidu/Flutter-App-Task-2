import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:task_2_new/Theme/colors.dart';
import 'package:task_2_new/Theme/text_style.dart';
import 'package:task_2_new/provider/list_provider.dart';
import 'package:task_2_new/views/widgets/list_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final buttonColor1 = KColors.yellowButton;
  final buttonColor2 = KColors.gradientPink;
  @override
  Widget build(BuildContext context) {
    return Consumer<MoodListProvider>(
      builder: ((context, moodProviderModel, child)=>
      Scaffold(
        backgroundColor: KColors.bgColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 105),
              child: Text(
                "How are you\nfeeling today?",
                textAlign: TextAlign.center,
                style: KTextStyle.splashTitle,
              ),
            ),
            SizedBox(height: 58),
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: SizedBox(
                height: 37,
                child: ListView.builder(
                  itemCount: moodProviderModel.moods.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: CustomButton(
                        text: moodProviderModel.moods[index],
                        gradientColor1: buttonColor1,
                        gradientColor2: buttonColor2,
                        isSelected: moodProviderModel.selectedIndex == index,
                        onPressed: () {
                          moodProviderModel.select(index);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 58),
              child: Text('Swipe to Learn More', style: KTextStyle.swipeDown),
            ),
            Spacer(),
            Stack(
              children: [
                Image.asset('assets/images/SplashImage.png', fit: BoxFit.cover),
                Positioned(
                  top: -80,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: KColors.bgColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
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
                        color: KColors.primaryText,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
      
                Positioned(
                  top: 283,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 247,
                        height: 46,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: KColors.yellowButton,
                          ),
                          onPressed: () {
                            context.go('/home');
                          },
                          child: Text(
                            'Get Started',
                            style: KTextStyle.startbutton,
                          ),
                        ),
                      ),
                      SizedBox(height: 11),
                      GestureDetector(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account?',
                              style: KTextStyle.alreadyaccText,
                            ),
                            Text(' LogIn', style: KTextStyle.loginText),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
