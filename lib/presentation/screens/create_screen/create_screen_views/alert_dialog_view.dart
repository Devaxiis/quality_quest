import 'package:quality_quest/library.dart';

late String answer;
bool isCheckBoxTapped = false;
TextEditingController answerAddingController = TextEditingController();

class CustomAnswerDialog extends StatefulWidget {
  final Color shadowColor;
  final Color buttonColor;
  final String titleText;
  final String initialValue;

  const CustomAnswerDialog({
    super.key,
    required this.shadowColor,
    required this.buttonColor,
    required this.initialValue,
    required this.titleText,
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
    return AlertDialog(
      surfaceTintColor: CustomColors.oxFFFFFFFF,
      title: Center(
        child: Text(
          widget.titleText,
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
