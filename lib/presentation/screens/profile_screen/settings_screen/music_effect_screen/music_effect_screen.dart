import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quality_quest/services/constants/strings.dart';

class MusicEffectScreen extends StatefulWidget {
  const MusicEffectScreen({super.key});

  @override
  State<MusicEffectScreen> createState() => _MusicEffectScreenState();
}

class _MusicEffectScreenState extends State<MusicEffectScreen> {
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
          Strings.musicEffectTXT,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: const [
          NotificationTile(title: Strings.musicTXT),
          SizedBox(height: 10),
          NotificationTile(title: Strings.soundEffectsTXT),
          SizedBox(height: 10),
          NotificationTile(title: Strings.animationEffectsTXT),
          SizedBox(height: 10),
          NotificationTile(title: Strings.visualEffectsTXT),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class NotificationTile extends StatefulWidget {
  final String title;

  const NotificationTile({
    super.key,
    required this.title,
  });

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  bool _toggleSwitch = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 17.5,
          fontWeight: FontWeight.w700,
          color: Color(0xFF212121),
        ),
      ),
      trailing: CupertinoSwitch(
        activeColor: const Color(0xFF6949FF),
        value: _toggleSwitch,
        onChanged: (value) {
          setState(() => _toggleSwitch = value);
        },
      ),
    );
  }
}
