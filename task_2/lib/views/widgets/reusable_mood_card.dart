import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/constant.dart';

class ReusableMoodCard extends StatelessWidget {
  final String title;
  final String time;
  final LinearGradient gradient;
  final Color buttonColor;
  final VoidCallback onTap;

  const ReusableMoodCard({
    Key? key,
    required this.title,
    required this.time,
    required this.gradient,
    required this.buttonColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 56,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        children: [
          Container(
            width: 269,
            height: 56,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: RColors.secondColor,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(11, 5, 5, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(255, 255, 255, 0.8),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        time,
                        style: GoogleFonts.poppins(
                          fontSize: 6,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 143,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: gradient,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 5),
          
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 43,
              height: 56,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Container(
                  width: 12,
                  height: 16,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: RColors.primaryColor,
                    borderRadius: BorderRadius.circular(2)
                  ),
                  child: Icon(Icons.play_arrow,size: 10, color: buttonColor,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}