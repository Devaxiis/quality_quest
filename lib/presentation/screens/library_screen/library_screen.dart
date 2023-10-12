import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/screens/library_screen/library_views/library_app_bar_views.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: const PreferredSize(
      //   preferredSize: Size(double.infinity, 60),
      //   child: LibraryAppBarViews(),
      // ),

      /// #Body
      body: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            width: MediaQuery.sizeOf(context).width / 1.5,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: const LibraryContainerContentViews(),
          );
        },
      ),
    );
  }
}
