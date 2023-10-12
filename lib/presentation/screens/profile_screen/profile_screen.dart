import 'package:flutter/material.dart';
import 'package:quality_quest/presentation/screens/profile_screen/profile_views/custom_button_views.dart';
import 'package:quality_quest/presentation/screens/profile_screen/settings_screen/settings_screen.dart';
import 'package:quality_quest/services/constants/colors.dart';
import 'package:quality_quest/services/constants/strings.dart';

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
          style: TextStyle(
            color: CustomColors.oxFF6949FF,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
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
                        backgroundColor: CustomColors.oxFF6949FF,
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
                          style: TextStyle(
                            color: CustomColors.oxFF000000,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
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
                        style: TextStyle(
                          color: CustomColors.oxFFFFFFFF,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
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
                return Container(
                  height: 180,
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 12,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(
                      color: CustomColors.oxFF607D8B,
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: double.infinity,
                        width: 150,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/idea.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18),
                            topLeft: Radius.circular(18),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Back to School. Get Smarter...",
                              style: TextStyle(
                                fontSize: 15,
                                color: CustomColors.oxFF000000,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 26),
                            Row(
                              children: [
                                const Text(
                                  "2 years ago",
                                ),
                                const SizedBox(width: 15),
                                CircleAvatar(
                                  backgroundColor: Colors.grey.shade800,
                                  maxRadius: 3.3,
                                ),
                                const SizedBox(width: 15),
                                const Text("15.7K plays"),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/img_profile_circle.png',
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text('Edgar Torrey'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
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
