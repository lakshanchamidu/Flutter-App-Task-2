import 'package:flutter/material.dart';
import 'package:task_2/data/constant.dart';
import 'reusable_mood_card.dart';

class MoodCards extends StatelessWidget {
  const MoodCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Container(
            width: 2,
            height: 192,
            color: RColors.secondColor,
          ),
          SizedBox(width: 10),
          Container(
            width: 307,
            height: 192,
            decoration: BoxDecoration(color: const Color.fromARGB(0, 255, 0, 0)),
            child: Column(
              children: [
                Expanded(
                  child: ReusableMoodCard(
                    title: "New Day\nFresh Start",
                    time: "7.30am",
                    gradient: RColors.gradientMorning,
                    buttonColor: RColors.morningButton,
                  ),
                ),
                SizedBox(height: 12),
                Expanded(
                  child: ReusableMoodCard(
                    title: "New Day\nFresh Start",
                    time: "7.30am",
                    gradient: RColors.gradientMorning,
                    buttonColor: RColors.morningButton,
                  ),
                ),
                SizedBox(height: 12),
                Expanded(
                  child: ReusableMoodCard(
                    title: "New Day\nFresh Start",
                    time: "7.30am",
                    gradient: RColors.gradientMorning,
                    buttonColor: RColors.morningButton,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
