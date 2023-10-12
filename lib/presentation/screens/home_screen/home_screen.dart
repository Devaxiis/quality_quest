import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/screens/home_screen/search_screen/search_screen.dart';
import 'package:quality_quest/services/constants/colors.dart';
import 'package:quality_quest/services/constants/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;


  void navigateToSearchScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SearchScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #background Color
      backgroundColor: CustomColors.oxFFFFFFFF,

      appBar: AppBar(
        title: const Text(
          Strings.qualityQuestTXT,
          style: TextStyle(
            fontSize: 22.5,
            color: CustomColors.oxFF6200EA,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            onPressed: navigateToSearchScreen,
            icon: const Image(
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
