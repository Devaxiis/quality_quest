import 'package:flutter/material.dart';

class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({super.key});

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    void navigateToBack(){
      Navigator.pop(context);
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: navigateToBack,
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "About QualityQuest",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Image(
              image: const AssetImage("assets/icons/ic_logo.png"),
              height: MediaQuery.sizeOf(context).height / 3.5,
              // width: double.infinity,
            ),
            const SizedBox(height: 30),
            const Text(
              "QualityQuest v1.0.0",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 30),
            const Divider(
              thickness: 1.5,
              endIndent: 20,
              indent: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Text(
                "QualityQuest is a captivating quiz app that promises an immersive experience for knowledge enthusiasts. Challenge yourself with a diverse range of thought-provoking questions that cover various topics, keeping the experience engaging and enriching. The app's sleek design ensures user-friendly navigation, while its name, QualityQuest, reflects its commitment to delivering high-quality quiz content. Whether you're a trivia buff or just looking for a fun way to expand your knowledge, QualityQuest has you covered. With a name that speaks to its commitment to excellence, this quiz app aims to elevate your quiz experience. So, buckle up for an exciting journey of discovery and learning with QualityQuest.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                  fontSize: 20,
                  letterSpacing: -1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
