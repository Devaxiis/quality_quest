
import 'package:quality_quest/library.dart';


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
              Strings.introThirdTXT,

              style: Style.introThirdST,

              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
