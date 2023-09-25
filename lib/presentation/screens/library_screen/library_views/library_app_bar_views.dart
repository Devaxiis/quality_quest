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
        "Library",
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          fontWeight: FontWeight.w700,
          color: const Color(0xFF212121),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: Align(
          alignment: const Alignment(-0.9, 0),
          child: Text(
            '28 Favorites',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: const Color(0xFF212121),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
