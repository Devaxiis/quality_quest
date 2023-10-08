import 'package:quality_quest/library.dart';

class CustomButtonViews extends StatelessWidget {
  final String title;
  const CustomButtonViews({super.key, required this.title});

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
      child: Text(
        title,
        style: const TextStyle(
            color: Color(0xff6949ff),
            fontWeight: FontWeight.bold,
            fontSize: 15),
      ),
    );
  }
}
