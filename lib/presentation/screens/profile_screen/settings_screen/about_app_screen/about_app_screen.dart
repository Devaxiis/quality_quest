import 'package:flutter/material.dart';
import 'package:quality_quest/services/constants/strings.dart';

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
          Strings.aboutAppTXT,
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
              Strings.appVersionTXT,
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
                Strings.descriptionQualityQuestTXT,
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
