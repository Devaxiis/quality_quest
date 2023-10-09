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
    bool? qiymat = false;
    return AlertDialog(
      title: const Center(
        child: Text('Add Answer',style: TextStyle(color: Color(0xFF295ECC),fontWeight: FontWeight.w800,fontSize: 30),),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            color: Colors.grey,
            endIndent: 20,
            indent: 20,
          ),
          const SizedBox(height: 10),
          Container(
            height: 120,
            width: 200,
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
       CheckBox(qiymrat: qiymat),
      ],
    );
  }
}

class CheckBox extends StatefulWidget {
  bool? qiymrat = false;
  CheckBox({super.key,this.qiymrat});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("It is a correct answer",style: TextStyle(color: Color(0xFF295ECC),fontWeight: FontWeight.w800),),
        CupertinoCheckbox(
          activeColor: const Color(0xFF295ECC),
          shape: const CircleBorder(),
          side: const BorderSide(color: Color(0xFF295ECC)),
          value: widget.qiymrat,
          onChanged: (ind) {
            setState(() {
              widget.qiymrat = ind;
            });

          },
        ),
      ],
    );
  }
}

