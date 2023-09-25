import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroThree extends StatelessWidget {
  const IntroThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/lotties/animation_lmdqpiyt.json",
                height: 300, width: 300),
            const Text(
              "Play and take quiz challanges together with your friends",
              style: TextStyle(
                  color: Color(0xff212121),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
