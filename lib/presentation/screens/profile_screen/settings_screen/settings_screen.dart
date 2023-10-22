import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quality_quest/bloc/logout/logout_bloc.dart';
import 'package:quality_quest/bloc/logout/logout_bloc.dart';
import 'package:quality_quest/data/store.dart';
import 'package:quality_quest/library.dart';

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
      backgroundColor: CustomColors.oxFFFFFFFF,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: CustomColors.oxFFFFFFFF,
        title: const Text(
          Strings.settingsTXT,
          style: Style.settingsST,
        ),
      ),

      /// #Body
      body: BlocListener<LogoutBloc, LogoutState>(
        listener: (context, state) {
          if (state is LogoutFailure) {
            Navigator.of(context).pop();
          }
          if (state is LogoutSuccess) {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => const SignInScreen()));
          }
        },
        child: BlocBuilder<LogoutBloc, LogoutState>(
          builder: (context, state) {
            return Column(
              children: [
                /// #Contents
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SettingsTileView(
                      backgroundColor: CustomColors.oxFFEEF4FF,
                      iconColor: CustomColors.oxFF3B7BFE,
                      title: Strings.notificationTXT,
                      icon: const AssetImage('assets/icons/ic_bell.png'),
                      textColor: CustomColors.oxDD000000,
                      trailing: IconButton(
                        onPressed: navigateToNotificationScreen,
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                    SettingsTileView(
                      backgroundColor: CustomColors.oxFFF3F1FF,
                      iconColor: CustomColors.oxFF7C5FFF,
                      title: Strings.musicEffectTXT,
                      icon: const AssetImage('assets/icons/ic_volume.png'),
                      textColor: CustomColors.oxDD000000,
                      trailing: IconButton(
                        onPressed: navigateToMusicEffectScreen,
                        icon: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                    SettingsTileView(
                      backgroundColor: CustomColors.oxFFFFF7EB,
                      iconColor: CustomColors.oxFFFEA01D,
                      title: Strings.aboutAppTXT,
                      icon: const AssetImage('assets/icons/ic_about.png'),
                      textColor: CustomColors.oxDD000000,
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
                    showLogoutBottomSheet(
                        context,
                        onTab: (){Navigator.of(context).pop();},
                        onTabTwo: (){context.read<LogoutBloc>().add(LogoOutEvent());});
                  }
                ),
                const Spacer(),
              ],
            );
          },
        ),
      ),
    );
  }
}
