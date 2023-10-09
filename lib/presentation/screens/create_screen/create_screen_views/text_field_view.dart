import 'package:quality_quest/library.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      maxLines: 6,
      style: TextStyle(
        fontSize: 18.5,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFEDEDF3),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF295ECC),
            width: 4,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        enabled: true,
        hintText: "Tap to add question",
        hintStyle: TextStyle(
          color: Color(0xFF295ECC),
          fontWeight: FontWeight.w700,
          fontSize: 17,
        ),
      ),
    );
  }
}