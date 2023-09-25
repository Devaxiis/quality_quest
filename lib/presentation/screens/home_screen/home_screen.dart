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
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        title: AppBarChildView(
          currentIndex: currentIndex,
        ),
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
