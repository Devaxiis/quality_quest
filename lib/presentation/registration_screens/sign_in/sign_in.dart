
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
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSignUpSuccessState) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const MainHomeScreen(),
              ),
            );
          }
          if(state is AuthSignInFailureState){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const SignInScreen(),
                ),
            );
          }
        },
        child: Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),

                    /// #Header Text
                    Text(
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
                          if(model.isNotEmpty && controllerPassword.text.trim().length > 4 && controllerEmail.text.trim().length >= 6 && controllerEmail.text.trim().contains("@")){
                            final Map<String, Object?> data = {
                              "email":controllerEmail.value.text.trim(),
                              "password": controllerPassword.value.text.trim(),
                              "deviceModel": model,
                            };
                          context.read<AuthBloc>().add(AuthSignInEvent(data: data));
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar( SnackBar(backgroundColor: const Color(0xff6949ff),content: Text("please fill in all sections",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.sp),)));
                          }
                        },
                        displayText: Strings.signInTXT,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),

            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is AuthSignInLoadingState) {
                  return const SizedBox(
                    child: Center(
                        child: CircularProgressIndicator.adaptive()
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
