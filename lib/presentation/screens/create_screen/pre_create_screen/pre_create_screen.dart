import 'package:flutter/cupertino.dart';
import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/screens/create_screen/create_screen.dart';
import 'package:quality_quest/services/constants/colors.dart';
import 'package:quality_quest/services/constants/strings.dart';

class PreCreateScreen extends StatefulWidget {
  const PreCreateScreen({super.key});

  @override
  State<PreCreateScreen> createState() => _PreCreateScreenState();
}

class _PreCreateScreenState extends State<PreCreateScreen> {
  bool _toggleSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.oxFFFFFFFF,
      appBar: AppBar(
        backgroundColor: CustomColors.oxFFFFFFFF,
        forceMaterialTransparency: true,
        centerTitle: true,
        title: const Text(
          Strings.createQuizTXT,
          style: TextStyle(
            color: CustomColors.oxFF6949FF,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            const SizedBox(height: 15),
            const CustomImagePicker(),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    width: 2,
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    width: 2,
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    width: 2,
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
                hintText: Strings.quizNameTXT,
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: CustomColors.ox8A000000,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  Strings.wantToMakePublicTXT,
                  style: TextStyle(
                    fontSize: 18,
                    color: CustomColors.oxFF424242,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                CupertinoSwitch(
                  activeColor: CustomColors.oxFF6949FF,
                  value: _toggleSwitch,
                  onChanged: (value) {
                    setState(() => _toggleSwitch = value);
                  },
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: CustomColors.oxFF7C4DFF,
          elevation: 6,
          shadowColor: CustomColors.oxFF673AB7,
          fixedSize: const Size(150, 45),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CreateScreen(),
            ),
          );
        },
        child: const Text(
          Strings.nextTXT,
          style: TextStyle(
            color: CustomColors.oxFFFFFFFF,
          ),
        ),
      ),
    );
  }
}
