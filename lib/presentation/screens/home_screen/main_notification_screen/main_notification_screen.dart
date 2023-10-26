import 'package:quality_quest/library.dart';

import 'main_notification_screen_views/accept_ignore_button.dart';

class NotificationMainScreen extends StatefulWidget {
  const NotificationMainScreen({super.key});

  @override
  State<NotificationMainScreen> createState() => _NotificationMainScreenState();
}

class _NotificationMainScreenState extends State<NotificationMainScreen> {
  bool _isTapped = false;
  final List<bool> _toggleAddButtonList = List.filled(5, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.oxFFFFFFFF,
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: CustomColors.oxFF000000,
          ),
        ),
      ),
      backgroundColor: CustomColors.oxFFFFFFFF,
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            leading: _isTapped
                ? null
                : Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Image(
                      height: 35.sp,
                      width: 35.sp,
                      image: const AssetImage(
                        "assets/images/img_profile_circle.png",
                      ),
                    ),
                  ),
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: CustomColors.oxFF000000,
                    ),
                    text: "Richard Traverse",
                  ),
                  TextSpan(
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.oxDD000000,
                    ),
                    text: " is inviting you to connect",
                  ),
                ],
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: _isTapped
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Groups",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: CustomColors.oxFF6949FF,
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 20.sp,
                            backgroundImage: const AssetImage(
                              "assets/images/kenny-eliason-KYxXMTpTzek-unsplash.jpg",
                            ),
                          ),
                          title: Text(
                            "History Group",
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w600,
                              color: CustomColors.oxDD000000,
                            ),
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              setState(() {
                                _toggleAddButtonList[index] =
                                    !_toggleAddButtonList[index];
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 12.0,
                              ),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                color: CustomColors.oxFF6949FF,
                              ),
                              child: Text(
                                _toggleAddButtonList[index] ? "Added" : "Add",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  color: CustomColors.oxFFFFFFFF,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        const Spacer(),
                        AcceptIgnoreButton(
                          text: "Accept",
                          onTap: () {
                            setState(() {
                              _isTapped = !_isTapped;
                            });
                          },
                        ),
                        const Spacer(flex: 3),
                        AcceptIgnoreButton(
                          text: "Ignore",
                          onTap: () {},
                        ),
                        const Spacer(flex: 10),
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }
}
