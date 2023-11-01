
import 'package:quality_quest/library.dart';

class CustomButtonViews extends StatelessWidget {
  final String title;
  final int index;
  final Color? color;
  final Color? colorBack;

  const CustomButtonViews({
    super.key,
    required this.title,
    required this.index,
    this.color,
    this.colorBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.sp,
      width: 120.sp,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: colorBack,
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        border: Border.all(
          width: 2,
          color: CustomColors.oxFF6949FF,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ThreeButtons extends StatelessWidget {

  ThreeButtons({super.key,required this.controller});

  final PageController controller;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupBloc, GroupState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                currentIndex = 0;
                context.read<GroupBloc>().add(GroupProfileEvent(currentIndex));
              },
              child: CustomButtonViews(
                title: Strings.quizzesTXT,
                index: currentIndex,
                color: currentIndex == 0
                    ? CustomColors.oxFFFFFFFF
                    : CustomColors.oxFF6949FF,
                colorBack: currentIndex != 0
                    ? CustomColors.oxFFFFFFFF
                    : CustomColors.oxFF6949FF,
              ),
            ),
            GestureDetector(
              onTap: () {
                currentIndex = 1;
                context.read<GroupBloc>().add(GroupProfileEvent(currentIndex));
              },
              child: CustomButtonViews(
                title: Strings.groupsTXT,
                index: currentIndex,
                color: currentIndex == 1
                    ? CustomColors.oxFFFFFFFF
                    : CustomColors.oxFF6949FF,
                colorBack: currentIndex != 1
                    ? CustomColors.oxFFFFFFFF
                    : CustomColors.oxFF6949FF,
              ),
            ),
            GestureDetector(
              onTap: () {
                currentIndex = 2;
                context.read<GroupBloc>().add(GroupProfileEvent(currentIndex));
              },
              child: CustomButtonViews(
                title: Strings.statsTXT,
                index: currentIndex,
                color: currentIndex == 2
                    ? CustomColors.oxFFFFFFFF
                    : CustomColors.oxFF6949FF,
                colorBack: currentIndex != 2
                    ? CustomColors.oxFFFFFFFF
                    : CustomColors.oxFF6949FF,
              ),
            ),
          ],
        );
      },
    );
  }
}
