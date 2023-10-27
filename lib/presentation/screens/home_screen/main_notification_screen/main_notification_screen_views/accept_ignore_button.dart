import 'package:quality_quest/library.dart';

class AcceptIgnoreButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const AcceptIgnoreButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStatePropertyAll(Colors.blue.shade50),
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 8.0,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
          border: Border.all(
            color: CustomColors.oxFF6949FF,
          ),
        ),
        child: Text(
          text,
          style: Style.addTextST,
        ),
      ),
    );
  }
}
