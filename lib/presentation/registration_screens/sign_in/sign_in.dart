import 'package:quality_quest/library.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  Map<String, dynamic> value = {};
  bool isVisible = true;
  String model = "";

  void visiblePassword() {
    isVisible = !isVisible;
    setState(() {});
  }

  Future<void> addUser() async {
    final email = controllerEmail.value.text.trim().toString();
    final password = controllerPassword.value.text.trim().toString();

    if (email.isEmpty || password.isEmpty) {
      return;
    }

    Map<String, Object?> data = {
      "password": password,
      "email": email,
      "deviceModel": model,
    };

    final value = await HttpService.methodSignInPost(
      api: Api.apiSignIN,
      data: data,
    );
    if (value == true && mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const MainHomeScreen(),
        ),
      );
    }
  }

  void init() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      model = (await deviceInfoPlugin.androidInfo).model;
    }
    if (Platform.isIOS) {
      model = (await deviceInfoPlugin.iosInfo).model;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.oxFFFFFFFF,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.oxFFFFFFFF,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),

              /// #Header Text
              const Text(
                Strings.helloThereTXT,
                style: Style.helloThereST,
              ),

              const Spacer(),

              ///TextField email
              CustomTextFormField(
                control: controllerEmail,
                keyboardType: TextInputType.emailAddress,
                textInput: TextInputAction.next,
                text: Strings.emailTXT,
              ),

              const Spacer(),

              ///TextField password
              CustomTextFormField(
                control: controllerPassword,
                keyboardType: TextInputType.visiblePassword,
                textInput: TextInputAction.done,
                suffixIcon: GestureDetector(
                  onTap: () => visiblePassword(),
                  child: isVisible
                      ? const Icon(
                          Icons.visibility_off,
                          color: CustomColors.oxFF7C4DFF,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          color: CustomColors.oxFF7C4DFF,
                        ),
                ),
                text: Strings.passwordTXT,
                obc: isVisible,
              ),

              const Spacer(),

              /// #RichText
              const CustomRichText(),

              const Spacer(flex: 8),

              /// #Button
              Center(
                child: CustomDeepPurpleButton(
                  onTap: () async {
                    showSuccessDialog(context);
                    await Future.delayed(const Duration(seconds: 3)).then(
                      (value) => addUser(),
                    );
                  },
                  displayText: Strings.signInTXT,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
