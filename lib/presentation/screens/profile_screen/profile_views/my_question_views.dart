import 'package:quality_quest/library.dart';

class MyQuestionViews extends StatelessWidget {
  const MyQuestionViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 12,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: CustomColors.oxFF607D8B,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 150,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/idea.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18),
                topLeft: Radius.circular(18),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Back to School. Get Smarter With New Quizzes",
                  style: TextStyle(
                    color: CustomColors.oxFF000000,
                    fontWeight: FontWeight.w800,
                    fontSize: 15,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 26),
                Row(
                  children: [
                    const Text(
                      "2 years ago",
                    ),
                    const SizedBox(width: 15),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      maxRadius: 3.3,
                    ),
                    const SizedBox(width: 15),
                    const Text("15.7K plays"),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/img_profile_circle.png',
                      ),
                    ),
                    SizedBox(width: 20),
                    Text('Edgar Torrey'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
