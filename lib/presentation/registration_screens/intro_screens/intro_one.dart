import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/lotties/animation_lmdqqb5b.json",
                  height: 300, width: 300),
              const Text(
                "Create, share and play quizzws whenever and wherever you want",
                style: TextStyle(
                    color: Color(0xff212121),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
