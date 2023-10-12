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
        color: CustomColors.oxFF000000,
        fontWeight: FontWeight.w600,
      ),
      textInputAction: TextInputAction.newline,
      decoration: InputDecoration(
        filled: true,
        fillColor: CustomColors.oxFFEDEDF3,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: CustomColors.oxFF295ECC,
            width: 4,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        enabled: true,
        hintText: Strings.tapToAddQuestion,
        hintStyle: TextStyle(
          color: CustomColors.oxFF295ECC,
          fontWeight: FontWeight.w700,
          fontSize: 17,
        ),
      ),
    );
  }
}
