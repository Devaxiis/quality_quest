import 'package:flutter/material.dart';

import 'bottom_sheet_button.dart';

void showLogoutBottomSheet(BuildContext context) {
  void navigateToBack() {
    Navigator.pop(context);
  }

  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    useSafeArea: true,
    elevation: 30,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
              child: Text(
                "Logout",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  color: Color(0xFFF85656),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: Color(0xFFEBE9E9),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Are you sure you want to log out?',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomSheetButton(
                  onTap: navigateToBack,
                  shadowColor: const Color(0xFFC3B6FF),
                  buttonColor: const Color(0xFFF0EDFF),
                  displayText: "Cancel",
                  textColor: const Color(0xFF6949FF),
                ),
                BottomSheetButton(
                  onTap: navigateToBack,
                  shadowColor: const Color(0xFF543ACD),
                  buttonColor: const Color(0xFF6949FF),
                  displayText: "Yes, Logout",
                  textColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
