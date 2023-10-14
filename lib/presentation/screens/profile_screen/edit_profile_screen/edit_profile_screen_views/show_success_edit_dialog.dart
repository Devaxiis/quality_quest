import '../../../../../library.dart';

void showSuccessEditDialog(BuildContext context) async {
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
                  "assets/lotties/done_animation.json",
                  height: 240,
                  width: 230,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Saved",
                style: Style.welcomeST,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    },
  );
  await Future.delayed(const Duration(seconds: 2)).then(
        (value) => Navigator.pop(context),
  );
}