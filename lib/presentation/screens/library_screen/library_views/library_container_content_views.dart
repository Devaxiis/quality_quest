import 'package:quality_quest/library.dart';

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
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: CustomColors.oxFF000000,
                    fontWeight: FontWeight.w800,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "4 months ago",
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    // SizedBox(width: 15.sp),
                    const CircleAvatar(
                      backgroundColor: CustomColors.oxFF424242,
                      maxRadius: 3.3,
                    ),
                    // SizedBox(width: 15.sp),
                    Text(
                      "95.7K plays",
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: const AssetImage(
                        "assets/images/img_profile_circle.png",
                      ),
                      radius: 18.sp,
                    ),
                    const Spacer(flex: 10),
                    Text(
                      'Elmer Wick',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    const Spacer(flex: 50),
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
