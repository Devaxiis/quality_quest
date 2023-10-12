
import 'package:quality_quest/library.dart';


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
            Lottie.asset(
              "assets/lotties/animation_lmdqzzip.json",
              height: 300,
              width: 300,
            ),
            const Text(
              Strings.introSecondTXT,

              style: Style.introSecondST ,

              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
