import 'package:flutter/material.dart';
import 'package:task_2/data/constant.dart';
import 'reusable_mood_card.dart';

class Mood2Cards extends StatelessWidget {
  const Mood2Cards({super.key});

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
            decoration: BoxDecoration(color: Colors.transparent),
            child: Column(
              children: [
                Expanded(
                  child: ReusableMoodCard(
                    title: "Stay Focused",
                    time: "12.30am",
                    gradient: RColors.gradientAfternoon,
                    buttonColor: RColors.afternoonButton,
                  ),
                ),
                SizedBox(height: 12),
                Expanded(
                  child: ReusableMoodCard(
                    title: "Keep Calm",
                    time: "12.30am",
                    gradient: RColors.gradientAfternoon,
                    buttonColor: RColors.afternoonButton,
                  ),
                ),
                SizedBox(height: 12),
                Expanded(
                  child: ReusableMoodCard(
                    title: "Rehcarge",
                    time: "12.30pm",
                    gradient: RColors.gradientAfternoon,
                    buttonColor: RColors.afternoonButton,
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
