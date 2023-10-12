import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quality_quest/services/constants/colors.dart';
import 'package:quality_quest/services/constants/strings.dart';

import '../../sign_up/sign_up.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void navigateToDetailScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        ),
      );
    }

    return Center(
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: Strings.notHaveAccountTXT,
              style: TextStyle(
                fontSize: 16,
                color: CustomColors.oxFF616161,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: Strings.signUpTXT,
              style: const TextStyle(
                fontSize: 16,
                color: CustomColors.oxFF512DA8,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  navigateToDetailScreen();
                },
            ),
          ],
        ),
      ),
    );
  }
}
