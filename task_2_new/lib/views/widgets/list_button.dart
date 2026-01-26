import 'package:flutter/material.dart';
import 'package:task_2_new/Theme/colors.dart';
import 'package:task_2_new/Theme/text_style.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color gradientColor1;
  final Color gradientColor2;
  final bool isSelected;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.gradientColor1,
    required this.gradientColor2,
    this.isSelected = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37,
      child: Container(
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(
                  colors: [
                    gradientColor1,
                    gradientColor2,
                  ],
                )
              : null,
          color: isSelected ? null : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(width: 1, color: KColors.primaryText),
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          child: Text(
            text,
            style: KTextStyle.scrollerbutton,
          ),
        ),
      ),
    );
  }
}
