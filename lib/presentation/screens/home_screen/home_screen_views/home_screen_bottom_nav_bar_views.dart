import 'package:quality_quest/library.dart';
import 'package:quality_quest/services/constants/strings.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int) onTap;
  final int bottomNavbarIndex;

  const BottomNavBar({
    super.key,
    required this.bottomNavbarIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      mouseCursor: MouseCursor.uncontrolled,
      showSelectedLabels: true,
      currentIndex: bottomNavbarIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/ic_home.png'),
            height: 18,
            width: 18,
          ),
          label: Strings.homeTXT,
          activeIcon: Image(
            image: AssetImage('assets/icons/ic_home_fill.png'),
            height: 18,
            width: 18,
          ),
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/ic_category.png'),
            height: 18,
            width: 18,
          ),
          activeIcon: Image(
            image: AssetImage('assets/icons/ic_category_fill.png'),
            height: 18,
            width: 18,
          ),
          label: Strings.libraryTXT,
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/ic_join.png'),
            height: 25,
            width: 25,
          ),
          label: Strings.joinTXT,
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/ic_create.png'),
            height: 18,
            width: 18,
          ),
          activeIcon: Image(
            image: AssetImage('assets/icons/ic_create_fill.png'),
            height: 18,
            width: 18,
          ),
          label: Strings.createTXT,
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: AssetImage('assets/icons/ic_user.png'),
            height: 18,
            width: 18,
          ),
          label: Strings.profileTXT,
          activeIcon: Image(
            image: AssetImage('assets/icons/ic_user_fill.png'),
            height: 18,
            width: 18,
          ),
        ),
      ],
    );
  }
}
