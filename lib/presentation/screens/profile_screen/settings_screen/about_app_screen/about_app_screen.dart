
import 'package:quality_quest/library.dart';


class AboutAppScreen extends StatefulWidget {
  const AboutAppScreen({super.key});

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    void navigateToBack() {
      Navigator.pop(context);
    }

    return Scaffold(
      backgroundColor: CustomColors.oxFFFFFFFF,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: CustomColors.oxFFFFFFFF,
        leading: IconButton(
          onPressed: navigateToBack,
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          Strings.aboutAppTXT,

          style: Style.aboutAppST,

        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Image(
              image: const AssetImage("assets/icons/ic_logo.png"),
              height: MediaQuery.sizeOf(context).height / 3.5,

            ),
            const SizedBox(height: 30),
            const Text(
              Strings.appVersionTXT,
              style: Style.appVersionST,
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

                style: Style.descriptionQualityQuestST,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
