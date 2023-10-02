import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quality_quest/bloc/auth/auth_bloc.dart';
import 'package:quality_quest/library.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerSurname = TextEditingController();
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
      body: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (_, state) {
            if (state is AuthSignUpSuccessState) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const SignInScreen(),
                ),
              );
            }
          })
        ],
        child: SafeArea(
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Spacer(),

                        /// #Header Text
                        const Text(
                          "Create an Account ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
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
                          "Please complete your profile. Don't worry, your data will remain private and only you can see it",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 2),

                        ///Sign up button
                        CustomDeepPurpleButton(
                            onTap: () {
                              final Map<String, Object?> data = {
                                "firstname":
                                    controllerName.value.text.trim().toString(),
                                "lastname": controllerSurname.value.text
                                    .trim()
                                    .toString(),
                                "password": controllerPassword.value.text
                                    .trim()
                                    .toString(),
                                "email": controllerEmail.value.text
                                    .trim()
                                    .toString(),
                              };
                              context
                                  .read<AuthBloc>()
                                  .add(AuthSignUpEvent(data: data));
                              // await addUser();
                            },
                            displayText: "Sign Up"),

                        const Spacer(),
                      ],
                    ),
                  ),
                  if (state is AuthSignUpLoadingState)
                    const Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
