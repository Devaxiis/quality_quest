import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  int counter = 0;
  List<TokenModel> list =[];

  @override
  void initState() {
    super.initState();
  }
    // bool shouldPop = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Do you want to go back?'),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child:  Text('Yes',style: TextStyle(color: const Color(0xff6949ff),fontSize: 20.sp,fontWeight: FontWeight.bold),),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child:  Text('No',style: TextStyle(color: const Color(0xff6949ff),fontSize: 20.sp,fontWeight: FontWeight.bold),),
                ),
              ],
            );
          },
        );
        return shouldPop!;
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
