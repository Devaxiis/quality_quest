import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/screens/home_screen/exam_screen/exam_controller.dart';
import 'package:quality_quest/services/fake_data/fake_data.dart';

class ExamScreen extends StatefulWidget {
  final ExamController controller;
  final FakeData data;

  const ExamScreen({super.key, required this.data, required this.controller});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  int questionIndex = 0;
  String question = "";
  List<String> questionList = [];

  @override
  void initState() {
    super.initState();

    question = widget.data.tarix.keys.first;
    questionList = widget.data.tarix.values.first.values.first;
    questionIndex += 1;
  }

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
            Expanded(
              flex: 4,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    question,
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
            ////////////////////////////////////////////////////
            Expanded(
                flex: 5,
                child: ExamQuestionItem(
                  controller: widget.controller,
                  questions: questionList,
                )),
            Expanded(
              child: Column(
                children: [
                  CustomDeepPurpleButton(
                    onTap: () {
                      setState(() {
                        print(widget.data.tarix.keys.toList()[questionIndex]);
                        if (widget.data.chekAnswer(
                            answer: widget.controller.answer,
                            question: widget.data.tarix.keys
                                .toList()[questionIndex - 1])) {
                          widget.controller.score += 1;
                        }
                        question =
                            widget.data.tarix.keys.toList()[questionIndex];
                        questionList = widget.data.tarix.values
                            .toList()[questionIndex]
                            .values
                            .toList()[0];

                        widget.controller.update(() {});
                        questionIndex += 1;
                        print(widget.controller.score);
                      });
                    },
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

class ExamQuestionItem extends StatefulWidget {
  final ExamController controller;
  final List<String> questions;

  const ExamQuestionItem(
      {super.key, required this.questions, required this.controller});

  @override
  State<ExamQuestionItem> createState() => _ExamQuestionItemState();
}

class _ExamQuestionItemState extends State<ExamQuestionItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnswerAddButton(
              shadowColor: CustomColors.oxFF6200EA,
              buttonColor: CustomColors.oxFF6949FF,
              text: widget.questions[0],
              onTap: () {
                setState(() {
                  widget.controller.answer = widget.questions[0];
                });
              },
            ),
            AnswerAddButton(
              shadowColor: CustomColors.oxFF6200EA,
              buttonColor: CustomColors.oxFF6949FF,
              text: widget.questions[1],
              onTap: () {
                setState(() {
                  widget.controller.answer = widget.questions[1];
                });
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnswerAddButton(
              shadowColor: CustomColors.oxFF6200EA,
              buttonColor: CustomColors.oxFF6949FF,
              text: widget.questions[2],
              onTap: () {
                setState(() {
                  widget.controller.answer = widget.questions[2];
                });
              },
            ),
            AnswerAddButton(
              shadowColor: CustomColors.oxFF6200EA,
              buttonColor: CustomColors.oxFF6949FF,
              text: widget.questions[3],
              onTap: () {
                setState(() {
                  widget.controller.answer = widget.questions[3];
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
