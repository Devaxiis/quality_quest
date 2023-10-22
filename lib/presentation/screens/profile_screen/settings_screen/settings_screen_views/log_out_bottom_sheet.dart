
import 'package:quality_quest/library.dart';

import 'bottom_sheet_button.dart';


Future showLogoutBottomSheet(BuildContext context, {required Function onTab,required Function onTabTwo}) async {

  showModalBottomSheet(
    context: context,
    backgroundColor: CustomColors.oxFFFFFFFF,
    useSafeArea: true,
    elevation: 30,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 26.0, horizontal: 20),
        decoration: const BoxDecoration(
          color: CustomColors.oxFFFFFFFF,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
              child: Text(
                Strings.logoutTXT,

                style: Style.logoutST,

              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              indent: 10,
              endIndent: 10,
              color: CustomColors.oxFFEBE9E9,
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                Strings.sureToLogOutTXT,
                style: Style.sureToLogOutST,
              ),
            ),
            const SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomSheetButton(
                  onTap: ()=>onTab(),
                  shadowColor: CustomColors.oxFFC3B6FF,
                  buttonColor: CustomColors.oxFFF0EDFF,
                  displayText: Strings.cancelTXT,
                  textColor: CustomColors.oxFF6949FF,
                ),
                BottomSheetButton(
                  onTap:()=> onTabTwo(),
                  shadowColor: CustomColors.oxFF543ACD,
                  buttonColor: CustomColors.oxFF6949FF,
                  displayText: Strings.yesLogOutTXT,
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
