import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_2_new/Theme/colors.dart';
import 'package:task_2_new/Theme/text_style.dart';

class MoodCard extends StatelessWidget {
  final String title;
  final String time;
  final Color buttonColor;
  final Color? gradientColor1;
  final Color? gradientColor2;
  const MoodCard({
    super.key,
    required this.title,
    required this.time,
    required this.buttonColor,
    required this.gradientColor1,
    required this.gradientColor2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        width: 307,
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 250,
              height: 56,
              decoration: BoxDecoration(
                color: KColors.navbarColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 5, bottom: 5),
                    child: Column(
                      children: [
                        Text(title, style: KTextStyle.alreadyaccText),
                        Text(time, style: KTextStyle.timeStyle),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 5, bottom: 5),
                    child: Container(
                      width: 143,
                      height: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [gradientColor1!, gradientColor2!],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                context.go('/selector');
              },
              child: Container(
                width: 43,
                height: 56,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/play_button.png',
                      width: 12,
                      height: 16,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
