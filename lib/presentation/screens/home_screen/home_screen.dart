import 'package:quality_quest/library.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  void navigateToDiscoverPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DetailDiscoverScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #background Color
      backgroundColor: Colors.white,

      appBar:AppBar(
        title: Text(
          "QualityQuest",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.deepPurpleAccent.shade700,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon:const Image(
              image: AssetImage('assets/icons/ic_search.png'),
              height: 20,
              width: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/icons/ic_bell.png'),
              height: 20,
              width: 20,
            ),
          ),
          const SizedBox(width: 10),
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 50),
          child: AppBarChildView(
            currentIndex: currentIndex,
          ),
        ),
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
