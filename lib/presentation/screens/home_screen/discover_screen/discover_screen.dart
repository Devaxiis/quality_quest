import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_quest/library.dart';

class DetailDiscoverScreen extends StatelessWidget {
  const DetailDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #Background Color
      backgroundColor: CustomColors.oxFFFFFFFF,
      resizeToAvoidBottomInset: true,

      // #AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        forceMaterialTransparency: true,
        title: Text(
          Strings.qualityQuestTXT,
          style: Style.homeDiscoverQualityQuestST,
        ),
      ),

      // #Body
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const ExamStartSplashScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 150.sp,
                      width: MediaQuery.sizeOf(context).width / 1.5,
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
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: double.infinity,
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
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
<<<<<<< HEAD
                                const Spacer(),
                                Text(
                                  "Back to School. Get Smarter",
                                  style: TextStyle(
                                      color: CustomColors.oxFF000000,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20.sp
=======
                                const Text(
                                  "Back to School. Get Smarter With New Quizzes",
                                  style: TextStyle(
                                    color: CustomColors.oxFF000000,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
>>>>>>> ebffdb75b0d0e23e851cb2e4b1e8f408c2ebde12
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                     Text(
                                      "2 years ago",style: TextStyle(fontSize: 15.sp),
                                    ),
                                    const SizedBox(width: 15),
                                    CircleAvatar(
                                      backgroundColor: Colors.grey.shade800,
                                      maxRadius: 3.3,
                                    ),
                                    const SizedBox(width: 15),
                                     Text("15.7K plays",style: TextStyle(fontSize: 15.sp),),
                                  ],
                                ),
                                const Spacer(),
                                 Row(
                                  children: [
                                     CircleAvatar(

                                      backgroundImage: const AssetImage(
                                        'assets/images/img_profile_circle.png',
                                      ),
                                      radius: 20.sp,
                                    ),
                                    const SizedBox(width: 20),
                                    Text('Edgar Torrey',style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                const Spacer(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
            height: 1.sp,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: CustomColors.oxFFFFFFFF,
                  blurRadius: 128,
                  spreadRadius: 70,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
