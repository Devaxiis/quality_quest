import 'package:quality_quest/bloc/mein_home/home_bloc.dart';
import 'package:quality_quest/library.dart';
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
  List<TokenModel> list = [];

  @override
  Widget build(BuildContext context) {
    // #WillPopScope
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
                  child: Text(
                    'Yes',
                    style: TextStyle(
                        color: const Color(0xff6949ff),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: Text(
                    'No',
                    style: TextStyle(
                        color: const Color(0xff6949ff),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },

      // #Scaffoled
      child: Scaffold(

        /// #Backgroun color
        backgroundColor: CustomColors.oxFFFFFFFF,

        /// #Body
        body: BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            if(state is HomeSuccess){
              pageController.jumpToPage(state.index);
            }
          },
          child: PageView(
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
        ),

        /// #BottomNavigationBar
        bottomNavigationBar: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return BottomNavBar(
              bottomNavbarIndex: bottomNavbarIndex,
              onTap: (value) {
                bottomNavbarIndex = value;
                context.read<HomeBloc>().add(
                    MainHomeEvent(bottomNavbarIndex));
              },
            );
          },
        ),
      ),
    );
  }
}
