import 'package:quality_quest/library.dart';

class CustomHomeScreenAppBar extends StatelessWidget {
  const CustomHomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "QualityQuest",
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          color: Colors.deepPurpleAccent.shade700,
          fontWeight: FontWeight.w800,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage('assets/icons/ic_search.png'),
            height: 20,
            width: 20,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Image(
            image: AssetImage('assets/icons/ic_bell.png'),
            height: 20,
            width: 20,
          ),
        ),
        const SizedBox(width: 10),
      ],
      automaticallyImplyLeading: false,
      forceMaterialTransparency: true,
      bottom: PreferredSize(
        preferredSize: const Size(0, 0),
        child: AppBarChildView(currentIndex: currentIndex),
      ),
    );
  }
}
