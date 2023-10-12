import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/screens/home_screen/exam_screen/exam_start_splash_screen.dart';
import 'package:quality_quest/services/constants/strings.dart';

class DetailDiscoverScreen extends StatelessWidget {
  const DetailDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // #Background Color
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,

      // #AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        forceMaterialTransparency: true,
        title: Text(
          Strings.qualityQuestTXT,
          style: TextStyle(
            fontSize: 23,
            color: Colors.deepPurpleAccent.shade700,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      // #Body
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 30,
                itemBuilder:(context,index){
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const ExamStartSplashScreen()));
                    },
                    child: Container(
                      height: 150,
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
                          color: Colors.blueGrey.shade500,
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
                                Text(
                                  "Back to School. Get Smarter...",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                  ),
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
                    ),
                  );
                }),
          ),
          Container(
            height: 1,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.white,
                  blurRadius: 128,
                  spreadRadius: 70,
                )
              ],
            ),
          ),
    ]
    )
    );
  }
}
