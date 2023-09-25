import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void showSuccessDialog(BuildContext context) {
  showDialog(
    useSafeArea: true,
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.scale(
                scale: 1.2,
                child: Lottie.asset(
                  "assets/lotties/alert_dialog_loading_animation.json",
                  height: 240,
                  width: 230,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Welcome",
                style: TextStyle(
                  color: Colors.deepPurple.shade700,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                "Successfully created an account!",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    },
  );
}
