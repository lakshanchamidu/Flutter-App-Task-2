import 'package:flutter/material.dart';

class HorizontalScroller extends StatelessWidget {
  const HorizontalScroller({super.key});

  @override
  Widget build(BuildContext context) {
    final heights = [
      20, 25, 30, 40, 55, 70, 90, 110,
      90, 70, 55, 40, 30, 25, 20
    ];

    return SizedBox(
      width: 520,
      height: 110,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(heights.length, (index) {
            return Container(
              width: 2,
              height: heights[index].toDouble(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
              ),
            );
          }),
        ),
      ),
    );
  }
}
