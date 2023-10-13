import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_quest/library.dart';


class SearchUserScreen extends StatefulWidget {
  const SearchUserScreen({super.key});

  @override
  State<SearchUserScreen> createState() => _SearchUserScreenState();
}

class _SearchUserScreenState extends State<SearchUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///#Backgroun Color
      backgroundColor: CustomColors.oxFFFFFFFF,

      /// #AppBar
      appBar: AppBar(
        toolbarHeight: 80.sp,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: 55.sp,
            width: MediaQuery.sizeOf(context).width / 1.1,
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image(
                    image: AssetImage("assets/icons/ic_search.png"),
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.cancel,
                  color: CustomColors.oxFF6949FF,
                ),
                label: Text(
                  Strings.searchTXT,
                  style: Style.joinSearchST,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                    width: 2,
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                    width: 2,
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                    width: 2,
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(
                    width: 2,
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
      ),

      /// #Body
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              child: Image(
                image: AssetImage("assets/images/img_profile_circle.png"),
              ),
            ),
            title: const Text(
              "Richard Traverse",
              style: Style.joinTitleST,
            ),
            subtitle: const Text("richard@gmail.com"),
            trailing: Container(
              height: 30.sp,
              width: 80.sp,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                border: Border.fromBorderSide(
                  BorderSide(
                    width: 1.4.sp,
                    color: CustomColors.oxFF6200EA,
                  ),
                ),
              ),
              child:  Text(
                Strings.followingTXT,
                style: Style.joinFollowingST,
              ),
            ),
          );
        },
      ),

    );
  }
}
