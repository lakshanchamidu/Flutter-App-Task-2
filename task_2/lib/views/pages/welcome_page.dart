import 'package:flutter/material.dart';
import 'package:task_2/data/constant.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 105,
              left: 31,
              child: SizedBox(
                width: 312,
                height: 96,
                child: Center(
                  child: Text(
                    "How are you\nfeeling today?",
                    textAlign: TextAlign.center,
                    style: KTextStyle.titleStyle,
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
