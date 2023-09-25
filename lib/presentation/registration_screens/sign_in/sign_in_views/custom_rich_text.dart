import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
            TextSpan(
              text: "Don't have an account ?",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.grey.shade700),
            ),
            TextSpan(
              text: " Sign Up",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.deepPurple.shade700),
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
