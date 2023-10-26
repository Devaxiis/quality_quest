import 'package:quality_quest/library.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({super.key});

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isTapped = !isTapped;
        setState(() {});
      },
      child: Container(
        height: 40.sp,
        width: 120.sp,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: isTapped ? CustomColors.oxFFFFFFFF : CustomColors.oxFF6949FF,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            width: 2,
            color: CustomColors.oxFF6949FF,
          ),
        ),
        child: Text(
          isTapped ? Strings.followingTXT : Strings.followTXT,
          style: TextStyle(
            color: isTapped ? CustomColors.oxDD000000 : CustomColors.oxFFFFFFFF,
            fontWeight: FontWeight.bold,
            fontSize: 15.sp,
          ),
        ),
      ),
    );
  }
}
