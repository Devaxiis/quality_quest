import 'package:flutter/cupertino.dart';
import 'package:quality_quest/library.dart';

class PreCreateScreen extends StatefulWidget {
  const PreCreateScreen({super.key});

  @override
  State<PreCreateScreen> createState() => _PreCreateScreenState();
}

class _PreCreateScreenState extends State<PreCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        centerTitle: true,
        title: const Text(
          "Create Quiz",
          style: TextStyle(
            color: Color(0xFF6949FF),
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
                  borderSide: BorderSide(width: 2, color: Color(0xff6949ff)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(width: 2, color: Color(0xff6949ff)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(width: 2, color: Color(0xff6949ff)),
                ),
                hintText: "Quiz Name",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Do you want to make it public ?",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                CupertinoSwitch(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 6,
          shadowColor: Colors.deepPurple,
          fixedSize: const Size(150, 45),
        ),
        onPressed: () {},
        child: const Text(
          'Next',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
