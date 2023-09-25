import 'package:flutter/material.dart';
import 'package:quality_quest/presentation/registration_screens/registration_view/custom_deep_purple_button.dart';
import 'package:quality_quest/presentation/registration_screens/registration_view/text_field_view.dart';
import 'package:quality_quest/presentation/registration_screens/sign_in/sign_in_views/custom_rich_text.dart';
import 'package:quality_quest/presentation/registration_screens/sign_in/sign_in_views/show_success_dialog.dart';
import 'package:quality_quest/presentation/screens/home_screen/home_screen.dart';
import 'package:quality_quest/presentation/screens/main_home_screen.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  bool isVisible = false;

  void visiblePassword() {
    isVisible = !isVisible;
    setState(() {});
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
                          )),
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
                  onTap: () {
                    showSuccessDialog(context);
                    Future.delayed(const Duration(seconds: 3)).then(
                      (value) => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const MainHomeScreen()),
                      ),
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
