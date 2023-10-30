import 'package:quality_quest/library.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.oxFFFFFFFF,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: CustomColors.oxFFFFFFFF,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: 55,
            width: MediaQuery.sizeOf(context).width / 1.1,
            child: TextField(
              onSubmitted: (d){

              },
              decoration:  InputDecoration(
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image(
                    image: AssetImage("assets/icons/ic_search.png"),
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
                suffixIcon: IconButton(
                  onPressed: (){},
                  icon:  const Icon(Icons.cancel),
                  color: CustomColors.oxFF6949FF,),
                label: const Text(
                  Strings.searchTXT,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
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
          ),
        ),
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
