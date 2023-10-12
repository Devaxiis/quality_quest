import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quality_quest/services/constants/strings.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lotties/animation_lmdqzzip.json",
                height: 300, width: 300),
            const Text(
              Strings.introSecondTXT,
              style: TextStyle(
                color: Color(0xff212121),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
