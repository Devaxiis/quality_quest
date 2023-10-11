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
      surfaceTintColor: Colors.white,
      title: const Center(
        child: Text(
          'Add Answer',
          style: TextStyle(
            color: Color(0xFF295ECC),
            fontWeight: FontWeight.w800,
            fontSize: 28,
          ),
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(color: Colors.grey),
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
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: 'Add your answer...',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
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
              "Correct answer",
              style: TextStyle(
                color: Color(0xFF295ECC),
                fontWeight: FontWeight.w800,
                fontSize: 19,
              ),
            ),
            const SizedBox(width: 60),
            CupertinoCheckbox(
              activeColor: const Color(0xFF295ECC),
              shape: const CircleBorder(),
              side: const BorderSide(color: Color(0xFF295ECC)),
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
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 6,
            shadowColor: Colors.deepPurple,
            fixedSize: const Size(250, 40),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Submit',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
