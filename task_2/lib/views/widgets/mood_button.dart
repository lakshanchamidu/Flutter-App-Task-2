import 'package:flutter/material.dart';
import 'package:task_2/data/constant.dart';

class MoodButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Gradient buttonColor;
  final VoidCallback? onTap;

  const MoodButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.buttonColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 84,
        height: 37,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.fromLTRB(15, 6, 15, 6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: isSelected ? buttonColor : null,
          color: isSelected ? null : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 1, color: RColors.primaryColor),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: isSelected ? Colors.black : RColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
