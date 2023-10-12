import 'package:flutter/cupertino.dart';

import 'package:quality_quest/library.dart';


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

        style: Style.widgetTitleST,

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
