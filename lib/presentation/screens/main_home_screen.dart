import 'package:quality_quest/library.dart';


class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int bottomNavbarIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// #AppBar
      appBar:bottomNavbarIndex == 2 ? null:AppBar(
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
            icon: bottomNavbarIndex == 1
                ? const Text("")
                : const Image(
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
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
      ),

      /// #Body
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeScreen(),
          LibraryScreen(),
          SearchUserScreen(),
        ],
      ),

      /// #BottomNavigationBar
      bottomNavigationBar: BottomNavBar(
        bottomNavbarIndex: bottomNavbarIndex,
        onTap: (value) {
          bottomNavbarIndex = value;
          pageController.jumpToPage(bottomNavbarIndex);
          setState(() {});
        },
      ),
    );
  }
}
