import 'package:quality_quest/library.dart';


class ExamScreen extends StatefulWidget {
  const ExamScreen({super.key});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:  Text(
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

                    style: Style.homeExamQuestionST),
                ))),



            const Divider(
              color: CustomColors.oxFF9E9E9E,
              indent: 20,
              endIndent: 20,
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
                        shadowColor:  CustomColors.oxFF6200EA,
                        buttonColor: CustomColors.oxFF6949FF,
                        text: "Andijon",
                        onTap: () {},
                      ),
                      AnswerAddButton(
                        shadowColor:  CustomColors.oxFF6200EA,
                        buttonColor: CustomColors.oxFF6949FF,
                        text: "Namangan",
                        onTap: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AnswerAddButton(
                        shadowColor:  CustomColors.oxFF6200EA,
                        buttonColor: CustomColors.oxFF6949FF,
                        text: "Toshkent",
                        onTap: () {},
                      ),
                      AnswerAddButton(
                        shadowColor: CustomColors.oxFF6200EA,
                        buttonColor: CustomColors.oxFF6949FF,
                        text: "Farg'ona",
                        onTap: () {},
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
