import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/screens/join_screen/join_screen_views/follow_button.dart';

class SearchUserScreen extends StatefulWidget {
  const SearchUserScreen({super.key});

  @override
  State<SearchUserScreen> createState() => _SearchUserScreenState();
}

class _SearchUserScreenState extends State<SearchUserScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///#Backgroun Color
      backgroundColor: CustomColors.oxFFFFFFFF,

      /// #AppBar
      appBar: AppBar(
        toolbarHeight: 80.sp,
        title: TextField(
          maxLines: 1,
          controller: textEditingController,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                onTap: () {},
                child: Image(
                  height: 25.sp,
                  image: const AssetImage("assets/icons/ic_search.png"),
                  color: CustomColors.oxFF6949FF,
                ),
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {
                textEditingController.text = "";
              },
              icon: Icon(
                size: 28.sp,
                Icons.cancel,
                color: CustomColors.oxFF6949FF,
              ),
            ),
            label: const Text(
              Strings.searchTXT,
              style: Style.joinSearchST,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                width: 2,
                color: CustomColors.oxFF6949FF,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                width: 2,
                color: CustomColors.oxFF6949FF,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                width: 2,
                color: CustomColors.oxFF6949FF,
              ),
            ),
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                width: 2,
                color: CustomColors.oxFF6949FF,
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
      ),

      /// #Body
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(
              child: Image(
                image: AssetImage("assets/images/img_profile_circle.png"),
              ),
            ),
            title: Text(
              "Richard Traverse",
              style: Style.joinTitleST,
            ),
            subtitle: Text("richard@gmail.com"),
            trailing: FollowButton(),
          );
        },
      ),
    );
  }
}
