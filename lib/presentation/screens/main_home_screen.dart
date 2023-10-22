import 'package:quality_quest/domain/model/registration/token_model/token_mode.dart';
import 'package:quality_quest/library.dart';
import 'package:quality_quest/main.dart';
import 'join_screen/join_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  PageController pageController = PageController();
  int bottomNavbarIndex = 0;
  List<TokenModel> list =[];

  @override
  void initState() {
    super.initState();
  }
    bool shouldPop = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() async {
        return shouldPop;
      },
      child: Scaffold(
        /// #Backgroun color
        backgroundColor: CustomColors.oxFFFFFFFF,

        /// #Body
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            HomeScreen(),
            LibraryScreen(),
            SearchUserScreen(),
            PreCreateScreen(),
            ProfileScreen(),
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
      ),
    );
  }
}
