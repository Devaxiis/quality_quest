import 'package:flutter/cupertino.dart';
import 'package:quality_quest/library.dart';


class CustomAnswerDialog extends StatelessWidget {
  final Color shadowColor;
  final Color buttonColor;

  const CustomAnswerDialog({
    super.key,
    required this.shadowColor,
    required this.buttonColor,
  });

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
            height: 120,
            width: 250,
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
              width: MediaQuery.of(context).size.width / 1.15,
              decoration: BoxDecoration(
                color: buttonColor,
                // Replace with your buttonColor
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: const TextField(
                textAlign: TextAlign.justify,
                maxLines: null,

                style: Style.createTextFieldST,
                decoration: InputDecoration(
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
        CheckBox(value: currentValue),
        const SizedBox(width: 15),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Spacer(),
            const Text(
              Strings.correctAnswerTXT,

              style: Style.createCorrectAnswerST,

            ),
            const SizedBox(width: 60),
            CupertinoCheckbox(
              activeColor: CustomColors.oxFF295ECC,
              shape: const CircleBorder(),
              side: const BorderSide(color: CustomColors.oxFF295ECC),
              value: widget.value,
              onChanged: (ind) {
                setState(() {
                  widget.value = ind;
                });
              },
            ),
            // const Spacer(),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColors.oxFF7C4DFF,
            elevation: 6,
            shadowColor: CustomColors.oxFF673AB7,
            fixedSize: const Size(250, 40),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            Strings.submitTXT,
            style: TextStyle(
              color: CustomColors.oxFFFFFFFF,
            ),
          ),
        ),
      ],
    );
  }
}
