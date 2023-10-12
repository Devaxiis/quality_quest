import 'package:quality_quest/library.dart';
import 'package:quality_quest/services/constants/colors.dart';

class LibraryContainerContentViews extends StatelessWidget {
  const LibraryContainerContentViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: SizedBox(
            height: double.infinity,
            child: Image(
              image: AssetImage('assets/images/img_idea.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  "Have Fun Together & Smart Brain",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: CustomColors.oxFF000000,
                    fontWeight: FontWeight.w800,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacer(),
                const Row(
                  children: [
                    Text("4 months ago"),
                    SizedBox(width: 15),
                    CircleAvatar(
                      backgroundColor: CustomColors.oxFF424242,
                      maxRadius: 3.3,
                    ),
                    SizedBox(width: 15),
                    Text("95.7K plays"),
                  ],
                ),
                const Spacer(),
                const Row(
                  children: [
                    CircleAvatar(
                      child: Image(
                        image: AssetImage(
                          "assets/images/img_profile_circle.png",
                        ),
                      ),
                    ),
                    Spacer(flex: 10),
                    Text('Elmer Wick'),
                    Spacer(flex: 50),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
