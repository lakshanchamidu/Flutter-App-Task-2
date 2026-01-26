import 'package:flutter/material.dart';

class HorizontalScroller extends StatelessWidget {
  const HorizontalScroller({super.key});

  @override
  Widget build(BuildContext context) {
    final heights = [
      35, 40, 52, 57, 61, 70, 61, 57, 52, 40, 35
    ];

    return SizedBox(
      width: 375,
      height: 77,
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
