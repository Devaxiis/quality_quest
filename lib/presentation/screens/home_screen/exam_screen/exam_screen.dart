import 'package:quality_quest/library.dart';

class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  bool _isTapped = true;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          Strings.qualityQuestTXT,
          style: Style.homeExamQualityQuestST,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 4,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "O'zbekistonning poytaxti?",
                    style: Style.homeExamQuestionST,
                  ),
                ),
              ),
            ),
            Divider(
              color: CustomColors.oxFF9E9E9E,
              indent: 20.sp,
              endIndent: 20.sp,
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AnswerAddButton(
                        shadowColor: currentIndex == 1 ? CustomColors.oxFFF48400 : CustomColors.oxFF6200EA,
                        buttonColor: currentIndex == 1 ? CustomColors.oxFFFF981F : CustomColors.oxFF6949FF,
                        text: "Andijon",
                        onTap: () {
                          currentIndex = 1;
                          setState(() {});
                        },
                      ),
                      AnswerAddButton(
                        shadowColor: currentIndex == 2 ? CustomColors.oxFFF48400 : CustomColors.oxFF6200EA,
                        buttonColor: currentIndex == 2 ? CustomColors.oxFFFF981F : CustomColors.oxFF6949FF,
                        text: "Namangan",
                        onTap: () {
                          currentIndex = 2;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AnswerAddButton(
                        shadowColor:  currentIndex == 3 ? CustomColors.oxFFF48400 : CustomColors.oxFF6200EA,
                        buttonColor:  currentIndex == 3 ? CustomColors.oxFFFF981F : CustomColors.oxFF6949FF,
                        text: "Toshkent",
                        onTap: () {
                          currentIndex = 3;
                          setState(() {});
                        },
                      ),
                      AnswerAddButton(
                        shadowColor: currentIndex == 4 ? CustomColors.oxFFF48400 : CustomColors.oxFF6200EA,
                        buttonColor: currentIndex == 4 ? CustomColors.oxFFFF981F : CustomColors.oxFF6949FF,
                        text: "Farg'ona",
                        onTap: () {
                          currentIndex = 4;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  CustomDeepPurpleButton(
                    onTap: () {},
                    displayText: Strings.nextTXT,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
