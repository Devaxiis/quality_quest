import 'package:flutter_screenutil/flutter_screenutil.dart';
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

        leading: Container(
          height: 40.sp,
          width: 40.sp,
          margin:  EdgeInsets.only(top: 10.sp, left: 10.sp, bottom: 10.sp),
          child: Image(
            image: const AssetImage("assets/images/purple_group.png"),
            height: 45.sp,
            width: 45.sp,
          ),
        ),
        title:  Text(

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
           SizedBox(width: 20.sp),
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

                const Spacer(
                  flex: 2,
                ),
                Row(
                  children: [
                    const Spacer(),
                     SizedBox(
                      height: 60.sp,
                      width: 60.sp,
                      child: const CircleAvatar(
                        radius: 60,
                        backgroundColor: CustomColors.oxFF6949FF,
                        backgroundImage: AssetImage(
                          "assets/images/img_profile_circle.png",
                        ),
                      ),
                    ),
                    const Spacer(),
                      Column(
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
                      height: 40.sp,
                      alignment: Alignment.center,
                      padding:  EdgeInsets.symmetric(horizontal: 10.sp),
                      decoration: const BoxDecoration(
                        color: CustomColors.oxFF6949FF,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Text(
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
                return  SizedBox(height: 10.sp);
              },
              itemCount: 20,
            ),
          ),
        ],
      )),
    );
  }
}
