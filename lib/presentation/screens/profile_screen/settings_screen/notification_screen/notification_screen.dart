import 'package:flutter/material.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Notification",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: const [
          NotificationTile(title: "Enable Push Notification"),
          SizedBox(height: 10),
          NotificationTile(title: "New Followers"),
          SizedBox(height: 10),
          NotificationTile(title: "New Likes"),
          SizedBox(height: 10),
          NotificationTile(title: "Subscriptions"),
          SizedBox(height: 10),
          NotificationTile(title: "Friend Activity"),
          SizedBox(height: 10),
          NotificationTile(title: "Leaderboard"),
          SizedBox(height: 10),
          NotificationTile(title: "App Updates"),
          SizedBox(height: 10),
          NotificationTile(title: "New Tips Available"),
        ],
      ),
    );
  }
}
