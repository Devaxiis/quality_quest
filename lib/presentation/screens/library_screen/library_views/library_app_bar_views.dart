import 'package:quality_quest/library.dart';


class LibraryAppBarViews extends StatelessWidget {
  const LibraryAppBarViews({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      forceMaterialTransparency: true,
      title: Text(
        Strings.qualityQuestTXT,
        style: Style.qualityQuestST,
      ),
    );
  }
}
