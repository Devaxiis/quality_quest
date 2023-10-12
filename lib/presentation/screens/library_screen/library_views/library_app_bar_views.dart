import 'package:quality_quest/library.dart';


class LibraryAppBarViews extends StatelessWidget {
  const LibraryAppBarViews({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Image(
          image: AssetImage('assets/icons/ic_logo.png'),
        ),
      ),
      centerTitle: false,
      forceMaterialTransparency: true,
      title: Text(
        Strings.libraryTXT,
        style: Style.libraryST,
      ),
    );
  }
}
