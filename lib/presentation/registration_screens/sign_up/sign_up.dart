import 'dart:io';

import 'package:quality_quest/core/params/aps.dart';
import 'package:quality_quest/data/network_service.dart';
import 'package:quality_quest/library.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerSurname  = TextEditingController();
  final TextEditingController controllerEmail  = TextEditingController();
  final TextEditingController controllerPassword  = TextEditingController();

  bool isVisible = false;

  void visiblePassword() {
    isVisible = !isVisible;
    setState(() {});
  }

  Future<void> addUser() async {

    final name = controllerName.value.text.trim().toString();
    final surname = controllerSurname.value.text.trim().toString();
    final email = controllerEmail.value.text.trim().toString();
    final password = controllerPassword.value.text.trim().toString();

    if(name.isEmpty || surname.isEmpty ||email.isEmpty || password.isEmpty){
      return;
    }


    final Map<String, Object?> data = {
      "firstname": name,
      "lastname": surname,
      "password": password,
      "email": email,
    };


   final value =  await HttpService.methodSignUpPost(api: Api.apiSignUp, data: data);
    if ( value == true && mounted  ) Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> const SignInScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Spacer(),

              /// #Header Text
              const Text(
                "Create an Account ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const Spacer(),

              ///TextField name
              CustomTextFormField(
                control: controllerName,
                keyboardType: TextInputType.name,
                textInput: TextInputAction.next,
                text: "Name",
              ),
              const Spacer(),

              ///TextField Surname
              CustomTextFormField(
                control: controllerSurname,
                keyboardType: TextInputType.name,
                textInput: TextInputAction.next,
                text: "Surname",
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
                obc: isVisible,
                text: "Password",
              ),
              const Spacer(),

              ///Personal text
              const Text(
                "Please complate your profile. Don't worry, your data will remain private and only you can see it",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(flex: 2),

              ///Sign up button
              CustomDeepPurpleButton(
                  onTap: () async{
                    await addUser();
                    // setState(() {});
                  },
                  displayText: "Sign Up"),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
