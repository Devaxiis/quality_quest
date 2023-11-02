import 'package:quality_quest/domain/model/screens/search_model/search_screen_model.dart';
import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/bloc/mein_home/search/search_bloc.dart';

import '../../../../core/service_locator.dart';
import '../../../../domain/repository/repository.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  late List<SearchModel> data = [];




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
            width: MediaQuery
                .sizeOf(context)
                .width / 1.1,
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image(
                    image: AssetImage("assets/icons/ic_search.png"),
                    color: CustomColors.oxFF6949FF,
                  ),
                ),
                label: Text(
                  Strings.searchTXT,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
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
      body: BlocListener<SearchBloc, SearchState>(
        listener: (context, state) {
          if (state is SearchFailure) {

          }
          if (state is SearchSuccess) {
            data = state.data;
          }
        },
        child: SafeArea(
          child: SizedBox(
            height: 200,

            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state is SearchLoading) {
                  return const Center(child: CircularProgressIndicator(),);
                } else {
                  return ListView.builder(
                    itemCount: data.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final response = data[index];
                      return ListTile(
                        title: Text(response.name),
                        subtitle: Text(
                            "Savollar soni: ${response.countQuizzes}"),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ),
      ),

      // $Search Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<SearchBloc>().add(
            SearchScienceEvent(
              title: searchController.text.trim(),
            ),
          );
          data = [];
        },
        child: const Icon(Icons.search_rounded),
      ),
    );
  }
}
