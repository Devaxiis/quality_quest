import 'package:quality_quest/library.dart';
import 'package:quality_quest/services/constants/colors.dart';

class QuestionsQuantity extends StatelessWidget {
  const QuestionsQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 1.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: CustomColors.oxFFEDE7F6,
      ),
      child: const Text(
        'Qs 10',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: CustomColors.oxFF616161,
        ),
      ),
    );
  }
}
