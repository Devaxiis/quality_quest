import 'package:quality_quest/library.dart';
import 'package:quality_quest/services/constants/strings.dart';

import '../../../services/constants/colors.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int values = 0;
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.oxFFFFFFFF,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            SizedBox(
              height: 450,
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  values = value;
                  setState(() {});
                },
                children: const [
                  IntroOne(),
                  IntroTwo(),
                  IntroThree(),
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 8,
                    width: values == 0 ? 32 : 8,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: values == 0
                          ? CustomColors.oxFF7C4DFF
                          : CustomColors.oxFF9E9E9E,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Container(
                    height: 8,
                    width: values == 1 ? 32 : 8,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: values == 1
                          ? CustomColors.oxFF7C4DFF
                          : CustomColors.oxFF9E9E9E,
                    ),
                  ),
                  const SizedBox(width: 7),
                  Container(
                    height: 8,
                    width: values == 2 ? 32 : 8,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: values == 2
                          ? CustomColors.oxFF7C4DFF
                          : CustomColors.oxFF9E9E9E,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(flex: 3),
            CustomDeepPurpleButton(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()),
                    (route) => false);
              },
              displayText: Strings.getStartedTXT,
            ),
            const Spacer(),
            CustomDeepPurpleButton(
              colorOne: CustomColors.oxFFC4B7FF,
              colorTwo: CustomColors.oxFFF0EDFF,
              colorText: CustomColors.oxFF6949FF,
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const SignInScreen(),
                  ),
                  (route) => false,
                );
              },
              displayText: Strings.haveAnAccountTXT,
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
