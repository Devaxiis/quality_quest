import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quality_quest/bloc/auth/auth_bloc.dart';
import 'package:quality_quest/library.dart';
import 'package:quality_quest/services/constants/colors.dart';
import 'package:quality_quest/services/constants/strings.dart';

import '../../../services/constants/style.dart';

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

  bool isVisible = true;

  void visiblePassword() {
    isVisible = !isVisible;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.oxFFFFFFFF,
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
                        const Text(Strings.createAccountTXT,style: Style.createAccountSt),
                        const Spacer(),

                        ///TextField name
                        CustomTextFormField(
                          control: controllerName,
                          keyboardType: TextInputType.name,
                          textInput: TextInputAction.next,
                          text: Strings.nameTXT,
                        ),
                        const Spacer(),

                        /// #TextField Surname
                        CustomTextFormField(
                          control: controllerSurname,
                          keyboardType: TextInputType.name,
                          textInput: TextInputAction.next,
                          text: Strings.surnameTXT,
                        ),
                        const Spacer(),

                        /// #TextField email
                        CustomTextFormField(
                          control: controllerEmail,
                          keyboardType: TextInputType.emailAddress,
                          textInput: TextInputAction.next,
                          text: Strings.emailTXT,
                        ),
                        const Spacer(),

                        /// #TextField password
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
                          obc: isVisible,
                          text: Strings.passwordTXT,
                        ),
                        const Spacer(),

                        ///Personal text
                        const Text(
                          Strings.signUpAlertTXT,
                          style: Style.signUpAlertST,
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
                              "email":
                                  controllerEmail.value.text.trim().toString(),
                            };
                            context
                                .read<AuthBloc>()
                                .add(AuthSignUpEvent(data: data));
                            // await addUser();
                          },
                          displayText: Strings.signUpTXT,
                        ),

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
