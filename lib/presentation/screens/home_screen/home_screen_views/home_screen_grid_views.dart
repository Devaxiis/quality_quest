import 'package:quality_quest/library.dart';

class QuizGridView extends StatelessWidget {
  const QuizGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
        scrollDirection: Axis.vertical,
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
          mainAxisExtent: 258,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailDiscoverScreen(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// #Cover Image
                    const Image(
                      image: AssetImage(
                        'assets/images/kenny-eliason-KYxXMTpTzek-unsplash.jpg',
                      ),
                    ),

                    const Spacer(flex: 3),

                    /// #Title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Brain Storming Puzzle Tests',
                        style: Theme.of(context).textTheme.titleMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    const Spacer(flex: 3),

                    /// #Questions Quantity
                    const QuestionsQuantity(),

                    const Spacer(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
