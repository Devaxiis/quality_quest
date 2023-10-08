import 'package:quality_quest/library.dart';

class CustomButtonViews extends StatelessWidget {
  final String title;
  final Color? color;
  final Function? onTab;
  const CustomButtonViews({super.key, required this.title, this.onTab, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>onTab,
      child: Container(
        height: 40,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: color ?? Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(50)),
            border: Border.all(width: 2, color: const Color(0xff6949ff),)),
        child: Text(title, style: TextStyle(
            color: color != null ? Colors.white:const Color(0xff6949ff),
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
      ),
    );
  }
}
