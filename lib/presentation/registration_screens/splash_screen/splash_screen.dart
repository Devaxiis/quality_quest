import 'package:quality_quest/library.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Tween<Offset> offsetTween;
  late Tween<Offset> offsetTween2;
  late Tween<Offset> offsetTween3;
  late Animation<Offset> offsetAnimation1;
  late Animation<Offset> offsetAnimation2;
  late Animation<Offset> offsetAnimation3;
  bool animateCompleted = false;

  // ignore: prefer_typing_uninitialized_variables

  @override
  void initState() {
    controller = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    offsetTween = Tween(begin: const Offset(0, -1000), end: Offset.zero);
    offsetTween2 = Tween(
        begin: const Offset(-1000, -1500),
        end: Offset.zero.translate(-70, -70));
    offsetTween3 = Tween(
        begin: const Offset(1000, 1000), end: Offset.zero.translate(75, 75));

    offsetAnimation1 = CurvedAnimation(
      parent: controller,
      // 1. define start and end time for each Intervals
      curve: const Interval(0, 0.7, curve: Curves.ease),
    ).drive(offsetTween);

    // 2. bind Interval to AnimationController using CurvedAnimation
    offsetAnimation2 = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.3, 0.7, curve: Curves.ease),
    ).drive(offsetTween2);

    // 3. create Animation from AnimationController and Tween
    offsetAnimation3 = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.7, 1, curve: Curves.ease),
    ).drive(offsetTween3);

    super.initState();
    if (!animateCompleted) {
      controller.forward().whenComplete(() {
        setState(() => animateCompleted = true);
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    navigateToSignInScreen();
  }

  void navigateToSignInScreen() async {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) =>
                  user != null ? const MainHomeScreen() : const IntroScreen()),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.oxFFFFFFFF,
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          return Center(
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.translate(
                    offset: offsetAnimation1
                        .value, // 4.  bind Animation created with each Interval
                    child: const Image(
                      image: AssetImage("assets/images/purple_group.png"),
                      height: 200,
                      width: 200,
                    ),
                  ),
                  Transform.translate(
                    offset: offsetAnimation2.value, // 4.
                    child: const Image(
                      image: AssetImage("assets/images/yellowgroup.png"),
                      height: 85,
                      width: 85,
                    ),
                  ),
                  Transform.translate(
                    offset: offsetAnimation3.value, // 4.
                    child: const Image(
                      image: AssetImage("assets/images/red_group.png"),
                      height: 85,
                      width: 85,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
