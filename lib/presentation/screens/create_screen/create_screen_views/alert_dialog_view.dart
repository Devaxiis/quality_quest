import 'package:flutter/cupertino.dart';
import 'package:quality_quest/library.dart';

late String answer;
bool isCheckBoxTapped = false;
TextEditingController answerAddingController = TextEditingController();

class CustomAnswerDialog extends StatefulWidget {
  final Color shadowColor;
  final Color buttonColor;
  final String initialValue;

  const CustomAnswerDialog({
    super.key,
    required this.shadowColor,
    required this.buttonColor,
    required this.initialValue,
  });

  @override
  State<CustomAnswerDialog> createState() => _CustomAnswerDialogState();
}

class _CustomAnswerDialogState extends State<CustomAnswerDialog> {
  @override
  void initState() {
    super.initState();
    answer = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    bool? currentValue = false;
    return AlertDialog(
      surfaceTintColor: CustomColors.oxFFFFFFFF,
      title: const Center(
        child: Text(
          Strings.addAnswerTXT,
          style: Style.createAddAnswerST,
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(color: CustomColors.oxFF9E9E9E),
          const SizedBox(height: 10),
          Container(
            height: 120.sp,
            width: 250.sp,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: widget.shadowColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Container(
              height: 113.sp,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.15,
              decoration: BoxDecoration(
                color: widget.buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: TextField(
                controller: answerAddingController,
                textAlign: TextAlign.justify,
                maxLines: null,
                style: Style.createTextFieldST,
                decoration: const InputDecoration(
                  hintText: Strings.addYourAnswerTXT,
                  hintStyle: Style.createAddYourAnswerST,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [
        isCheckBoxTapped == false
            ? Center(child: CheckBox(value: currentValue))
            : Center(
                child: GestureDetector(
                  onTap: () {
                    isCheckBoxTapped = false;
                    setState(() {});
                  },
                  child: Text(
                    "Correct answer?",
                    style: Style.createAddCoverImageST,
                  ),
                ),
              ),
        const SizedBox(width: 15),
        const SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.oxFF7C4DFF,
              elevation: 6,
              shadowColor: CustomColors.oxFF673AB7,
              fixedSize: Size(250.sp, 40.sp),
            ),
            onPressed: () {
              if (answerAddingController.text.isNotEmpty) {
                setState(() {
                  answer = answerAddingController.text;
                });
                Navigator.of(context).pop(answer);
                answerAddingController.text = "";
              } else {
                return;
              }
            },
            child: const Text(
              Strings.submitTXT,
              style: TextStyle(
                color: CustomColors.oxFFFFFFFF,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CheckBox extends StatefulWidget {
  bool? value = false;

  CheckBox({
    super.key,
    this.value,
  });

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.correctAnswerTXT,
              style: Style.createCorrectAnswerST,
            ),
            CupertinoCheckbox(
              activeColor: CustomColors.oxFF295ECC,
              shape: const CircleBorder(),
              side: const BorderSide(color: CustomColors.oxFF295ECC),
              value: widget.value,
              onChanged: (currentValue) {
                setState(() {
                  widget.value = currentValue;
                  isCheckBoxTapped = !isCheckBoxTapped;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
