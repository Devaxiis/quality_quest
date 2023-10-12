import 'package:quality_quest/library.dart';

class AnswerAddButton extends StatelessWidget {
  final Color shadowColor;
  final Color buttonColor;
  final void Function() onTap;
  final String text;

  const AnswerAddButton({
    super.key,
    required this.shadowColor,
    required this.buttonColor,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 190,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: shadowColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Container(
          height: 113,
          alignment: Alignment.center,
          width: MediaQuery.sizeOf(context).width / 1.15,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Text(
            text,
            style: Style.createTextST,
          ),
        ),
      ),
    );
  }
}
