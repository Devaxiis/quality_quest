
import 'package:quality_quest/library.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
          child: const Image(
            image: AssetImage("assets/images/purple_group.png"),
          ),
        ),
        title: const Text(
          Strings.qualityQuestTXT,
          style: Style.qualityQuestST,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingScreen()));
            },
            icon: const Icon(
              Icons.settings,
            ),
          ),
          const SizedBox(width: 20),
        ],
        forceMaterialTransparency: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // const SizedBox(height: 30),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  children: [
                    const Spacer(),
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Color(0xff6949ff),
                        backgroundImage:
                            AssetImage("assets/images/img_profile_circle.png"),
                      ),
                    ),
                    const Spacer(),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Andrew Ainley",
                          style: Style.nameEditST,
                        ),
                        Text(
                          "andrewainley@gmail.com",
                          style: Style.emailEditST,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                        color: Color(0xff6949ff),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: const Text(
                        Strings.editProfileTXT,
                        style: Style.editProfileST,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                // const SizedBox(height: 30),
                const Spacer(
                  flex: 5,
                ),
                const ThreeButtons(),
                // const SizedBox(height: 5),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return const MyQuestionViews();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemCount: 20,
            ),
          ),
        ],
      )),
    );
  }
}
