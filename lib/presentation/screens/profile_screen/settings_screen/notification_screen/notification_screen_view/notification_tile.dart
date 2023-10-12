import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quality_quest/services/constants/colors.dart';

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
          color: CustomColors.oxFF212121,
        ),
      ),
      trailing: CupertinoSwitch(
        activeColor: CustomColors.oxFF6949FF,
        value: _toggleSwitch,
        onChanged: (value) {
          setState(() => _toggleSwitch = value);
        },
      ),
    );
  }
}
