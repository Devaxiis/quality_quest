import 'package:flutter/material.dart';

class LogOutListTile extends StatelessWidget {
  const LogOutListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 25),
      title: const Text(
        "Log Out",
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w700,
          color: Color(0xFFFC6369),
        ),
      ),
      trailing: IconButton(
        onPressed: () {},
        style: IconButton.styleFrom(
          backgroundColor: const Color(0xFFFFF3F3),
          shape: const OvalBorder(),
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
        ),
        icon: const Image(
          image: AssetImage('assets/icons/ic_log_out.png'),
          color: Color(0xFFFC6369),
        ),
      ),
    );
  }
}
