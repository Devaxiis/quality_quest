import 'package:quality_quest/library.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Create Quiz",
          style: TextStyle(
            color: Color(0xFF6949FF),
            fontWeight: FontWeight.w800,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Image(
            height: 28,
            width: 28,
            image: AssetImage('assets/icons/ic_x.png',),
            color: Color(0xFF295ECC),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Image(
              height: 28,
              width: 28,
              image: AssetImage("assets/icons/ic_more.png"),
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

