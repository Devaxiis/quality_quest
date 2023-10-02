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
    return AlertDialog(
      title: const Center(
        child: Text('Add Answer'),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(
            endIndent: 20,
            indent: 20,
          ),
          const SizedBox(height: 10),
          Container(
            height: 120,
            width: 195,
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
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            elevation: 6,
            shadowColor: Colors.deepPurple,
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
