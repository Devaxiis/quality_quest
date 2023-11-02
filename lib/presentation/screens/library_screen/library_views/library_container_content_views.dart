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
                  "Salom",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: CustomColors.oxFF000000,
                    fontWeight: FontWeight.w800,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Savollar soni:",
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(width: 20.sp),
                    Text(
                      "20",
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
                        fontSize: 18.sp,
                      ),
                    ),
                    const Spacer(flex: 10),
                    IconButton(onPressed: (){},
                        icon: const Icon(Icons.delete)),
                    const Spacer(flex: 10),
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
