import 'package:quality_quest/library.dart';

class CustomButtonViews extends StatelessWidget {
  const CustomButtonViews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius:
          const BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            width: 2,
            color: const Color(0xff6949ff),
          )),
      child: const Text(
        "My Question",
        style: TextStyle(
            color: Color(0xff6949ff),
            fontWeight: FontWeight.bold,
            fontSize: 15),
      ),
    );
  }
}
