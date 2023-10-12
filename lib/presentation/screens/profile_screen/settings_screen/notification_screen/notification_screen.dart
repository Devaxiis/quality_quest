import 'package:flutter/material.dart';
import 'package:quality_quest/services/constants/colors.dart';
import 'package:quality_quest/services/constants/strings.dart';

import 'notification_screen_view/notification_tile.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.oxFFFFFFFF,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor:  CustomColors.oxFFFFFFFF,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          Strings.notificationTXT,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: CustomColors.oxFF000000,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: const [
          NotificationTile(title: Strings.enablePushNotificationTXT),
          SizedBox(height: 10),
          NotificationTile(title: Strings.newFollowersTXT),
          SizedBox(height: 10),
          NotificationTile(title: Strings.newLikesTXT),
          SizedBox(height: 10),
          NotificationTile(title: Strings.subscriptionsTXT),
          SizedBox(height: 10),
          NotificationTile(title: Strings.leaderboardTXT),
          SizedBox(height: 10),
          NotificationTile(title: Strings.appUpdatesTXT),
          SizedBox(height: 10),
          NotificationTile(title: Strings.newTipsTXT),
        ],
      ),
    );
  }
}
