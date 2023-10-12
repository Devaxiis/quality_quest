import 'package:quality_quest/library.dart';


class CustomRichText extends StatelessWidget {
  const CustomRichText({super.key});

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
              text: Strings.notHaveAccountTXT,
              style: Style.notHaveAccountST,
            ),
            TextSpan(
              text: Strings.signUpTXT,
              style: Style.signUpST,
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
