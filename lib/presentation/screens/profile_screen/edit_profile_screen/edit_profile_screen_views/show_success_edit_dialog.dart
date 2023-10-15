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
              Lottie.asset(
                "assets/lotties/done_animation.json",
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
  await Future.delayed(const Duration(seconds: 3)).then(
        (value) => Navigator.pop(context),
  );
}