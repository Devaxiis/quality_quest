import 'package:quality_quest/library.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
   // #Scaffold
    return Scaffold(

      // #Background Color
      backgroundColor: CustomColors.oxFFFFFFFF,

      // #AppBar
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          Strings.createQuizTXT,
          style: Style.createQuizST,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.clear,
            color: CustomColors.oxFF295ECC,
            size: 30,
          ),
        ),
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
                    text: Strings.answerTXT,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const CustomAnswerDialog(
                            shadowColor: CustomColors.oxFF295ECC,
                            buttonColor: CustomColors.oxFF3779FF,
                          );
                        },
                      );
                    },
                  ),

                  /// #Second Answer Button
                  AnswerAddButton(
                    shadowColor: CustomColors.oxFFEA1E61,
                    buttonColor: CustomColors.oxFFF75555,
                    text: Strings.answerTXT,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const CustomAnswerDialog(
                            shadowColor: CustomColors.oxFFEA1E61,
                            buttonColor: CustomColors.oxFFF75555,
                          );
                        },
                      );
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
                    text: Strings.answerTXT,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const CustomAnswerDialog(
                            shadowColor: CustomColors.oxFFF48400,
                            buttonColor: CustomColors.oxFFFF981F,
                          );
                        },
                      );
                    },
                  ),

                  // / #Second Answer Button
                  AnswerAddButton(
                    shadowColor: CustomColors.oxFF00B777,
                    buttonColor: CustomColors.oxFF12D18E,
                    text: Strings.answerTXT,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const CustomAnswerDialog(
                            shadowColor: CustomColors.oxFF00B777,
                            buttonColor: CustomColors.oxFF12D18E,
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      /// #Floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: CustomColors.oxFF6949FF,
        hoverColor: CustomColors.oxFFD9D6FE,
        child: const Icon(Icons.add, color: CustomColors.oxFFFFFFFF),
      ),
    );
  }
}
