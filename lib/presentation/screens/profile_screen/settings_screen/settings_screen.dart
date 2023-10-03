import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/screens/profile_screen/settings_screen/about_app_screen/about_app_screen.dart';
import 'package:quality_quest/presentation/screens/profile_screen/settings_screen/music_effect_screen/music_effect_screen.dart';
import 'package:quality_quest/presentation/screens/profile_screen/settings_screen/notification_screen/notification_screen.dart';
import 'package:quality_quest/presentation/screens/profile_screen/settings_screen/settings_screen_views/log_out_bottom_sheet.dart';
import 'package:quality_quest/presentation/screens/profile_screen/settings_screen/settings_screen_views/log_out_list_tile.dart';
import 'package:quality_quest/presentation/screens/profile_screen/settings_screen/settings_screen_views/settings_tile_view.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  void navigateToNotificationScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const NotificationScreen(),
      ),
    );
  }

  void navigateToMusicEffectScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MusicEffectScreen(),
      ),
    );
  }

  void navigateToAboutAppScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AboutAppScreen(),
      ),
    );
  }

  void navigateToBack() {
    Navigator.pop(context);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),

      /// #Body
      body: Column(
        children: [
          /// #Contents
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SettingsTileView(
                backgroundColor: const Color(0xFFEEF4FF),
                iconColor: const Color(0xFF3B7BFE),
                title: 'Notification',
                icon: const AssetImage('assets/icons/ic_bell.png'),
                textColor: Colors.black87,
                trailing: IconButton(
                  onPressed: navigateToNotificationScreen,
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
              SettingsTileView(
                backgroundColor: const Color(0xFFF3F1FF),
                iconColor: const Color(0xFF7C5FFF),
                title: 'Music & Effects',
                icon: const AssetImage('assets/icons/ic_volume.png'),
                textColor: Colors.black87,
                trailing: IconButton(
                  onPressed: navigateToMusicEffectScreen,
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
              SettingsTileView(
                backgroundColor: const Color(0xFFFFF7EB),
                iconColor: const Color(0xFFFEA01D),
                title: 'About Quality Quest',
                icon: const AssetImage('assets/icons/ic_about.png'),
                textColor: Colors.black87,
                trailing: IconButton(
                  onPressed: navigateToAboutAppScreen,
                  icon: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            ],
          ),

          /// #Log Out View
          const Spacer(flex: 10),
          LogOutListTile(
            onPressed: () {
              showLogoutBottomSheet(context);
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

