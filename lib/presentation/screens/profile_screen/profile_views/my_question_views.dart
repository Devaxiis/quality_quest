import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_quest/library.dart';

class MyQuestionViews extends StatelessWidget {
  const MyQuestionViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.sp,
      margin: EdgeInsets.symmetric(
        vertical: 10.sp,
        horizontal: 12.sp,
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
            height: double.infinity.sp,
            width: 150.sp,
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
                const Spacer(),
                 Text(
                  "Back to School. Get Smarter With New Quizzes",
                  style: TextStyle(
                    color: CustomColors.oxFF000000,
                    fontWeight: FontWeight.w800,
                    fontSize: 18.sp,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                Row(
                  children: [
                     Text(
                      "2 years ago",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    const SizedBox(width: 15),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade800,
                      maxRadius: 3.3,
                    ),
                     const SizedBox(width: 15),
                     Text("15.7K plays",style: TextStyle(fontSize: 15.sp)),
                  ],
                ),
                const Spacer(),
                 Row(
                  children: [
                    SizedBox(
                      height: 40.sp,
                      width: 40.sp,
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/img_profile_circle.png',
                        ),
                      ),
                    ),
                    SizedBox(width: 20.sp),
                    Text('Edgar Torrey',style: TextStyle(fontSize: 15.sp),),
                  ],
                ),
                 const  Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
