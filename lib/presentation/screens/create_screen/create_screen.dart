import 'package:quality_quest/library.dart';
import 'package:quality_quest/services/constants/strings.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          Strings.createQuizTXT,
          style: TextStyle(
            color: Color(0xFF6949FF),
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.clear,
            color: Color(0xFF295ECC),
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Color(0xFF295ECC),
              size: 35,
            ),
          ),
        ],
      ),
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
                    shadowColor: const Color(0xFF295ECC),
                    buttonColor: const Color(0xFF3779FF),
                    text: Strings.answerTXT,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const CustomAnswerDialog(
                            shadowColor: Color(0xFF295ECC),
                            buttonColor: Color(0xFF3779FF),
                          );
                        },
                      );
                    },
                  ),

                  /// #Second Answer Button
                  AnswerAddButton(
                    shadowColor: const Color(0xFFEA1E61),
                    buttonColor: const Color(0xFFF75555),
                    text: Strings.answerTXT,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const CustomAnswerDialog(
                            shadowColor: Color(0xFFEA1E61),
                            buttonColor: Color(0xFFF75555),
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
                    shadowColor: const Color(0xFFF48400),
                    buttonColor: const Color(0xFFFF981F),
                    text: Strings.answerTXT,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const CustomAnswerDialog(
                            shadowColor: Color(0xFFF48400),
                            buttonColor: Color(0xFFFF981F),
                          );
                        },
                      );
                    },
                  ),

                  // / #Second Answer Button
                  AnswerAddButton(
                    shadowColor: const Color(0xFF00B777),
                    buttonColor: const Color(0xFF12D18E),
                    text: Strings.answerTXT,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const CustomAnswerDialog(
                            shadowColor: Color(0xFF00B777),
                            buttonColor: Color(0xFF12D18E),
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
        backgroundColor: const Color(0xFF6949FF),
        hoverColor: const Color(0xFFD9D6FE),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
