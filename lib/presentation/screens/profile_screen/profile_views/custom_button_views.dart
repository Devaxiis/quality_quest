import 'package:quality_quest/library.dart';

class CustomButtonViews extends StatelessWidget {
  final String title;
  final int index;
  final Color? color;
  final Color? colorBack;

  const CustomButtonViews(
      {super.key,
      required this.title,
      required this.index,
      this.color,
      this.colorBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: colorBack,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            width: 2,
            color: const Color(0xff6949ff),
          )),
      child: Text(
        title,
        style:
            TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}

class ThreeButtons extends StatefulWidget {
  ThreeButtons({
    super.key,
  });

  @override
  State<ThreeButtons> createState() => _ThreeButtonsState();
}

class _ThreeButtonsState extends State<ThreeButtons> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
            onTap: () {
              currentIndex = 0;
              setState(() {});
            },
            child: CustomButtonViews(
              title: "My Question",
              index: currentIndex,
              color: currentIndex == 0 ? Colors.white : const Color(0xff6949ff),
              colorBack: currentIndex != 0 ? Colors.white : const Color(0xff6949ff),
            )),
        GestureDetector(
            onTap: () {
              currentIndex = 1;
              setState(() {});
            },
            child: CustomButtonViews(
              title: "Do you work",
              index: currentIndex,
              color: currentIndex == 1 ? Colors.white : const Color(0xff6949ff),
              colorBack: currentIndex != 1 ? Colors.white : const Color(0xff6949ff),
            )),
        GestureDetector(
            onTap: () {
              currentIndex = 2;
              setState(() {});
            },
            child: CustomButtonViews(
              title: "Subscribers",
              index: currentIndex,
              color: currentIndex == 2 ? Colors.white : const Color(0xff6949ff),
              colorBack: currentIndex != 2 ? Colors.white : const Color(0xff6949ff),
            )),
      ],
    );
  }
}
