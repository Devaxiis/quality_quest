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
      backgroundColor: Colors.white,

      /// #AppBar
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: 55,
            width: MediaQuery.sizeOf(context).width / 1.1,
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image(
                    image: AssetImage("assets/icons/ic_search.png"),
                    color: Color(0xff6949ff),
                  ),
                ),
                suffixIcon: Icon(
                  Icons.cancel,
                  color: Color(0xff6949ff),
                ),
                label: Text(
                  "Search",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(width: 2, color: Color(0xff6949ff)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(width: 2, color: Color(0xff6949ff)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(width: 2, color: Color(0xff6949ff)),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(width: 2, color: Color(0xff6949ff)),
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
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("richard@gmail.com"),
            trailing: Container(
              height: 30,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                border: Border.fromBorderSide(
                  BorderSide(
                    width: 1.4,
                    color: Colors.deepPurpleAccent.shade700,
                  ),
                ),
              ),
              child: Text(
                "Following",
                style: TextStyle(
                  color: Colors.deepPurpleAccent.shade700,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
