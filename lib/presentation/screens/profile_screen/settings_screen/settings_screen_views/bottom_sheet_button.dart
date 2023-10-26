import 'package:quality_quest/library.dart';

class BottomSheetButton extends StatelessWidget {
  final Color shadowColor;
  final Color buttonColor;
  final Color textColor;
  final String displayText;
  final void Function() onTap;

  const BottomSheetButton({
    super.key,
    required this.onTap,
    required this.shadowColor,
    required this.buttonColor,
    required this.displayText,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.sp,
        width: MediaQuery.sizeOf(context).width / 2.5,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: shadowColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Container(
          height: 45.sp,
          alignment: Alignment.center,
          width: MediaQuery.sizeOf(context).width / 2.5,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Text(
            displayText,
            style: TextStyle(color: textColor,fontSize: 20.sp,fontWeight: FontWeight.bold,),
          ),
        ),
      ),
    );
  }
}
