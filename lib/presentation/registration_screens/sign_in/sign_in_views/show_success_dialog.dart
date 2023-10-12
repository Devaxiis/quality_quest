import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quality_quest/services/constants/colors.dart';
import 'package:quality_quest/services/constants/strings.dart';

void showSuccessDialog(BuildContext context) {
  showDialog(
    useSafeArea: true,
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: CustomColors.oxFFFFFFFF,
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
              const Text(
                Strings.welcomeTXT,
                style: TextStyle(
                  color: CustomColors.oxFF512DA8,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                Strings.successfullyCreatedAccount,
                style: TextStyle(
                  color: CustomColors.oxFF616161,
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
