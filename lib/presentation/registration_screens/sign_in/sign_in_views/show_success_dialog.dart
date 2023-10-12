
import 'package:quality_quest/library.dart';


void showSuccessDialog(BuildContext context) {
  showDialog(
    useSafeArea: true,
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: CustomColors.oxFFFFFFFF,
        content: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Transform.scale(
                scale: 1.2,
                child: Lottie.asset(
                  "assets/lotties/alert_dialog_loading_animation.json",
                  height: 240,
                  width: 230,
                ),
              ),
              const SizedBox(height: 10),
               Text(
                Strings.welcomeTXT,

                style: Style.welcomeST,

              ),
              const SizedBox(height: 15),
               Text(
                Strings.successfullyCreatedAccount,

                style: Style.successfullyCreatedAccountST,

              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    },
  );
}
