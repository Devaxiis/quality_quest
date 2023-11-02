import 'dart:math';

import 'package:quality_quest/library.dart';
import 'package:quality_quest/main.dart';
import 'package:quality_quest/presentation/bloc/create_science/create_science_value/science_value_bloc.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  TextEditingController controllerQuestion = TextEditingController();
  String firstAnswer = "";
  String secondAnswer = "";
  String thirdAnswer = "";
  String fourthAnswer = "";

  @override
  Widget build(BuildContext context) {
    // #Scaffold
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Center(
                child: Text(
                  'Do you want to kill test?',
                  style: TextStyle(
                    color: const Color(0xff6949ff),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: const Color(0xff6949ff),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: Text(
                    'No',
                    style: TextStyle(
                      color: const Color(0xff6949ff),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: Scaffold(
        // #Background Color
        backgroundColor: CustomColors.oxFFFFFFFF,

        // #AppBar
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: const Text(
            Strings.createQuizTXT,
            style: Style.createQuizST,
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_)=> const MainHomeScreen()), (route) => false);
              },
              icon: const Icon(
                Icons.cancel,
                color: CustomColors.oxFF295ECC,
                size: 35,
              ),
            ),
          ],
        ),

        // #Body
        body: BlocListener<ScienceValueBloc, ScienceValueState>(
          listener: (context, state) {
            if(state is ScienceValueSuccess){
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      backgroundColor:Color(0xFF6949FF),
                      content: Text("Successfully created",style: Style.createAddYourAnswerST,)));
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>const CreateScreen()));
            }
            if(state is ScienceValueFailure){
              print('-------------Errooorrr----------------');
            }
          },
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 30),

                    /// #TextField
                    TextField(
                      maxLines: 6,
                      controller: controllerQuestion,
                      style: const TextStyle(
                        fontSize: 18.5,
                        color: CustomColors.oxFF000000,
                        fontWeight: FontWeight.w600,
                      ),
                      textInputAction: TextInputAction.newline,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: CustomColors.oxFFEDEDF3,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: CustomColors.oxFF295ECC,
                            width: 4,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        enabled: true,
                        hintText: Strings.tapToAddQuestion,
                        hintStyle: TextStyle(
                          color: CustomColors.oxFF295ECC,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    /// #Answers
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        /// #First Answer Button
                        AnswerAddButton(
                          shadowColor: CustomColors.oxFF295ECC,
                          buttonColor: CustomColors.oxFF3779FF,
                          text: firstAnswer.isNotEmpty
                              ? firstAnswer
                              : Strings.correctAnswerTXT,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return CustomAnswerDialog(
                                  shadowColor: CustomColors.oxFF295ECC,
                                  buttonColor: CustomColors.oxFF3779FF,
                                  initialValue: firstAnswer,
                                  titleText: Strings.correctAnswerTXT,
                                );
                              },
                            ).then((value) {
                              if (value != null) {
                                setState(() {
                                  firstAnswer = value;
                                });
                              }
                            });
                          },
                        ),

                        /// #Second Answer Button
                        AnswerAddButton(
                          shadowColor: CustomColors.oxFFEA1E61,
                          buttonColor: CustomColors.oxFFF75555,
                          text: secondAnswer.isNotEmpty
                              ? secondAnswer
                              : Strings.answerTXT,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return CustomAnswerDialog(
                                  shadowColor: CustomColors.oxFF295ECC,
                                  buttonColor: CustomColors.oxFF3779FF,
                                  initialValue: secondAnswer,
                                  titleText: Strings.answerTXT,
                                );
                              },
                            ).then((value) {
                              if (value != null) {
                                setState(() {
                                  secondAnswer = value;
                                });
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        /// #First Answer Button
                        AnswerAddButton(
                          shadowColor: CustomColors.oxFFF48400,
                          buttonColor: CustomColors.oxFFFF981F,
                          text: thirdAnswer.isNotEmpty
                              ? thirdAnswer
                              : Strings.answerTXT,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return CustomAnswerDialog(
                                  shadowColor: CustomColors.oxFF295ECC,
                                  buttonColor: CustomColors.oxFF3779FF,
                                  initialValue: thirdAnswer,
                                  titleText: Strings.answerTXT,
                                );
                              },
                            ).then((value) {
                              if (value != null) {
                                setState(() {
                                  thirdAnswer = value;
                                });
                              }
                            });
                          },
                        ),

                        // / #Second Answer Button
                        AnswerAddButton(
                          shadowColor: CustomColors.oxFF00B777,
                          buttonColor: CustomColors.oxFF12D18E,
                          text: fourthAnswer.isNotEmpty
                              ? fourthAnswer
                              : Strings.answerTXT,
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return CustomAnswerDialog(
                                  shadowColor: CustomColors.oxFF295ECC,
                                  buttonColor: CustomColors.oxFF3779FF,
                                  initialValue: fourthAnswer,
                                  titleText: Strings.answerTXT,
                                );
                              },
                            ).then((value) {
                              if (value != null) {
                                setState(() {
                                  fourthAnswer = value;
                                });
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ),

        /// #Floating action button
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<ScienceValueBloc>().add(ScienceValuePost(
              scienceId: scienceID,
              question: controllerQuestion.text.trim(),
              correctAnswer: firstAnswer,
              answer1: secondAnswer,
              answer2: thirdAnswer,
              answer3: fourthAnswer,
            ));
          },
          backgroundColor: CustomColors.oxFF6949FF,
          hoverColor: CustomColors.oxFFD9D6FE,
          child: const Icon(Icons.add, color: CustomColors.oxFFFFFFFF),
        ),
      ),
    );
  }
}
