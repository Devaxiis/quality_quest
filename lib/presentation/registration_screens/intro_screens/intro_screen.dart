import 'package:quality_quest/library.dart';

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
                      color:
                          values == 0 ? const Color(0xff7C4DFF) : Colors.grey,
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
                      color:
                          values == 1 ? const Color(0xff7C4DFF) : Colors.grey,
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
                      color:
                          values == 2 ? const Color(0xff7C4DFF) : Colors.grey,
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
              displayText: 'GET STARTED',
            ),
            const Spacer(),
            CustomDeepPurpleButton(
              colorOne: const Color(0xffc4b7ff),
              colorTwo: const Color(0xfff0edff),
              colorText: const Color(0xff6949FF),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (context) => const SignInScreen()),
                    (route) => false);
              },
              displayText: "I Already have an Account",
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
