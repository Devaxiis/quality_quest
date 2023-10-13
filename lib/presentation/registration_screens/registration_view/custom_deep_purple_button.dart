import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_quest/library.dart';

class CustomDeepPurpleButton extends StatelessWidget {
  final String displayText;
  final double? width;
  final double? height;
  final Color? colorOne;
  final Color? colorTwo;
  final Color? colorText;
  final void Function() onTap;

  const CustomDeepPurpleButton({
    super.key,
    required this.onTap,
    required this.displayText,
    this.colorOne,
    this.colorTwo,
    this.colorText,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 57.sp,
        width: width ?? MediaQuery.sizeOf(context).width / 1.15,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: colorOne ?? CustomColors.oxFF543ACC,
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Container(
          height: height ?? 50.sp,
          alignment: Alignment.center,
          width: width ?? MediaQuery.sizeOf(context).width / 1.15,
          decoration: BoxDecoration(
            color: colorTwo ?? CustomColors.oxFF6949FF,
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Text(
            displayText,
            style: TextStyle(
              color: colorText ?? CustomColors.oxFFFFFFFF,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
