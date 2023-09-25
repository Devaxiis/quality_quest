import 'package:quality_quest/library.dart';

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
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.deepPurple.shade50,
      ),
      child: Text(
        'Qs 10',
        style: Theme.of(context)
            .textTheme
            .titleSmall
            ?.copyWith(color: Colors.grey.shade700),
      ),
    );
  }
}
