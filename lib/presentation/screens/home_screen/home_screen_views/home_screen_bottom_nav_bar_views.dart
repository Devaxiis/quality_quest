import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_quest/library.dart';

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
      backgroundColor: CustomColors.oxFFFFFFFF,
      mouseCursor: MouseCursor.uncontrolled,
      showSelectedLabels: true,
      currentIndex: bottomNavbarIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Image(
            image: const AssetImage('assets/icons/ic_home.png'),
            height: 18.sp,
            width: 18.sp,
          ),
          label: Strings.homeTXT,
          activeIcon: Image(
            image: const AssetImage('assets/icons/ic_home_fill.png'),
            height: 18.sp,
            width: 18.sp,
          ),
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: const AssetImage('assets/icons/ic_category.png'),
            height: 18.sp,
            width: 18.sp,
          ),
          activeIcon: Image(
            image: const AssetImage('assets/icons/ic_category_fill.png'),
            height: 18.sp,
            width: 18.sp,
          ),
          label: Strings.libraryTXT,
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: const AssetImage('assets/icons/ic_join.png'),
            height: 25.sp,
            width: 25.sp,
          ),
          label: Strings.joinTXT,
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: const AssetImage('assets/icons/ic_create.png'),
            height: 18.sp,
            width: 18.sp,
          ),
          activeIcon: Image(
            image: const AssetImage('assets/icons/ic_create_fill.png'),
            height: 18.sp,
            width: 18.sp,
          ),
          label: Strings.createTXT,
        ),
        BottomNavigationBarItem(
          icon: Image(
            image: const AssetImage('assets/icons/ic_user.png'),
            height: 18.sp,
            width: 18.sp,
          ),
          label: Strings.profileTXT,
          activeIcon: Image(
            image: const AssetImage('assets/icons/ic_user_fill.png'),
            height: 18.sp,
            width: 18.sp,
          ),
        ),
      ],
    );
  }
}
