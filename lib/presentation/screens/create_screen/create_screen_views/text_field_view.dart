import 'package:quality_quest/library.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      maxLines: null,
      style: TextStyle(
        fontSize: 18.5,
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      ),
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFEDEDF3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        hintText: "Tap to add question",
        hintStyle: TextStyle(
          color: Color(0xFF767676),
          fontWeight: FontWeight.w700,
          fontSize: 17,
        ),
      ),
    );
  }
}