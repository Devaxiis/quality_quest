import 'package:quality_quest/library.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #background Color
      backgroundColor: CustomColors.oxFFFFFFFF,

      appBar: AppBar(
        title: Text(
          Strings.qualityQuestTXT,
          style: Style.qualityQuestST,
        ),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchScreen(),
                ),
              );
            },
            icon: Image(
              image: const AssetImage('assets/icons/ic_search.png'),
              height: 25.sp,
              width: 25.sp,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
            icon: Image(
              image: const AssetImage('assets/icons/ic_bell.png'),
              height: 25.sp,
              width: 25.sp,
            ),
          ),
          const SizedBox(width: 10),
        ],
        elevation: 3,
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
      ),

      /// #Body
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuizGridView(),
          ],
        ),
      ),
    );
  }
}
