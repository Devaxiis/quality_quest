import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.sp,
          mainAxisSpacing: 20.sp,
          mainAxisExtent: 258.sp,
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
                color: CustomColors.oxFFEEEEEE,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Container(
                clipBehavior: Clip.antiAlias,
                height: 250.sp,
                decoration: const BoxDecoration(
                  color: CustomColors.oxFFFFFFFF,
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
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
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
