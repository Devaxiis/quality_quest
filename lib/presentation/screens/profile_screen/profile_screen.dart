import 'package:flutter/material.dart';
import 'package:quality_quest/presentation/screens/profile_screen/settings_screen/settings_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Quality Quest",
          style: TextStyle(
            color: Color(0xff6949ff),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions:  [
          IconButton(
            onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const SettingScreen()));
            },
          icon: const Icon(Icons.settings,),
          ),
          const SizedBox(width: 20),
        ],
        forceMaterialTransparency: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              children: [
                const SizedBox(height: 30),
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
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "andrewainley@gmail.com",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 13),
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
                        "Edit Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            width: 2,
                            color: const Color(0xff6949ff),
                          )),
                      child: const Text(
                        "My Question",
                        style: TextStyle(
                            color: Color(0xff6949ff),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            width: 2,
                            color: const Color(0xff6949ff),
                          )),
                      child: const Text(
                        "My Question",
                        style: TextStyle(
                            color: Color(0xff6949ff),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            width: 2,
                            color: const Color(0xff6949ff),
                          )),
                      child: const Text(
                        "My Question",
                        style: TextStyle(
                            color: Color(0xff6949ff),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
          Expanded(
            flex: 13,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  height: 50,
                  color: Colors.yellowAccent,
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
