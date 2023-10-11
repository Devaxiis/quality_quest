import 'dart:async';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:quality_quest/core/params/aps.dart';
import 'package:quality_quest/data/network_service.dart';
import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/registration_screens/sign_in/sign_in_views/custom_rich_text.dart';
import 'package:quality_quest/presentation/registration_screens/sign_in/sign_in_views/show_success_dialog.dart';
import 'package:quality_quest/presentation/screens/main_home_screen.dart';

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
  bool isVisible = false;
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
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0, backgroundColor: Colors.white),
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
                "Hello There 👋",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),

              const Spacer(),

              ///TextField email
              CustomTextFormField(
                control: controllerEmail,
                keyboardType: TextInputType.emailAddress,
                textInput: TextInputAction.next,
                text: "Email",
              ),

              const Spacer(),

              ///TextField password
              CustomTextFormField(
                control: controllerPassword,
                keyboardType: TextInputType.visiblePassword,
                textInput: TextInputAction.done,
                suffixIcon: GestureDetector(
                  onTap: () => visiblePassword(),
                  child: isVisible == true
                      ? const Icon(
                          Icons.visibility_outlined,
                          color: Colors.deepPurpleAccent,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Colors.deepPurpleAccent,
                        ),
                ),
                text: "Password",
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
                  displayText: 'Sign In',
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
