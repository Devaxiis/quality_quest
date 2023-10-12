import 'package:quality_quest/library.dart';
import 'package:quality_quest/services/constants/colors.dart';
import 'package:quality_quest/services/constants/strings.dart';

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
      title: const Text(
        Strings.libraryTXT,
        style: TextStyle(
          fontSize: 22.5,
          color: CustomColors.oxFF6200EA,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
