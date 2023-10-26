import 'package:quality_quest/library.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
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
              title:  Center(
                child: Text('Do you want to kill test?',style: TextStyle(
                    color: const Color(0xff6949ff),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),),
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
                        fontWeight: FontWeight.bold),
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
                        fontWeight: FontWeight.bold),
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
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz,
                color: CustomColors.oxFF295ECC,
                size: 35,
              ),
            ),
          ],
        ),

        // #Body
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),

                /// #TextField
                const CustomTextField(),

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
                          : Strings.answerTXT,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return CustomAnswerDialog(
                              shadowColor: CustomColors.oxFF295ECC,
                              buttonColor: CustomColors.oxFF3779FF,
                              initialValue: firstAnswer,
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
          ),
<<<<<<< HEAD
=======
        ],
      ),

      // #Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),

              /// #TextField
              const CustomTextField(),

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
>>>>>>> 214c46fd020a3180aea971c2f593c94d82c29cbd
        ),

        /// #Floating action button
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: CustomColors.oxFF6949FF,
          hoverColor: CustomColors.oxFFD9D6FE,
          child: const Icon(Icons.add, color: CustomColors.oxFFFFFFFF),
        ),
      ),
    );
  }
}
