
import 'package:quality_quest/library.dart';



class LogOutListTile extends StatefulWidget {
  final void Function() onPressed;

  const LogOutListTile({
    super.key,
    required this.onPressed,
  });

  @override
  State<LogOutListTile> createState() => _LogOutListTileState();
}

class _LogOutListTileState extends State<LogOutListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:  EdgeInsets.symmetric(horizontal: 25.sp),
      title:  Text(
        Strings.logOutTXT,
        style: TextStyle(
          fontSize: 19.sp,
          fontWeight: FontWeight.w700,
          color: CustomColors.oxFFFC6369,
        ),
      ),
      trailing: IconButton(
        onPressed: widget.onPressed,
        style: IconButton.styleFrom(
          backgroundColor: CustomColors.oxFFFFF3F3,
          shape: const OvalBorder(),
          padding: EdgeInsets.symmetric(
            vertical: 15.sp,
            horizontal: 15.sp,
          ),
        ),
        icon: Image(
          image: const AssetImage('assets/icons/ic_log_out.png'),
          color: CustomColors.oxFFFC6369,
          height: 20.sp,
          width: 20.sp,
        ),
      ),
    );
  }
}
