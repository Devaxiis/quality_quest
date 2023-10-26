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
            if(state is AuthSignUpFailureState){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
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
                        Text(
                          Strings.createAccountTXT,
                          style: Style.createAccountSt,
                        ),
                        const Spacer(),

                        /// #TextField name
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

                        /// #Personal text
                        Text(
                          Strings.signUpAlertTXT,
                          style: Style.signUpAlertST,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(flex: 2),

                        /// #Sign up button
                        CustomDeepPurpleButton(
                          onTap: () {
                            if(controllerName.text.trim().length >= 3 && controllerSurname.text.trim().length >= 3 && controllerPassword.text.trim().length > 4 && controllerEmail.text.trim().length >= 6 && controllerEmail.text.trim().contains("@")){
                            context.read<AuthBloc>().add(AuthSignUpEvent(firstname: controllerName.text.trim(),lastname: controllerSurname.text.trim(),password: controllerPassword.text.trim(),email: controllerEmail.text.trim()));
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar( SnackBar(backgroundColor: const Color(0xff6949ff),content: Text("please fill in all sections",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp),)));
                            }
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
