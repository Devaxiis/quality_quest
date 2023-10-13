import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsTileView extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final String title;
  final ImageProvider icon;
  final Widget? trailing;
  final Color textColor;

  const SettingsTileView({
    super.key,
    required this.backgroundColor,
    required this.iconColor,
    required this.title,
    required this.icon,
    required this.textColor,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:  EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
      dense: true,
      leading: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(60),
          ),
        ),
        child: Image(
          image: icon,
          fit: BoxFit.cover,
          color: iconColor,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.w600,color: textColor,fontSize: 19,),
      ),
      trailing: trailing,
    );
  }
}
