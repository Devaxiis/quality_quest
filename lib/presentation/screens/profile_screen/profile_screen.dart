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
      backgroundColor: CustomColors.oxFFFFFFFF,
      appBar: AppBar(
        title: const Text(
          Strings.qualityQuestTXT,
          style: Style.qualityQuestST,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const SettingScreen()),
              );
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
                        backgroundColor: CustomColors.oxFF6949FF,
                        backgroundImage: AssetImage(
                          "assets/images/img_profile_circle.png",
                        ),
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
                          style: TextStyle(
                            color: CustomColors.oxFF000000,
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                        color: CustomColors.oxFF6949FF,
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
