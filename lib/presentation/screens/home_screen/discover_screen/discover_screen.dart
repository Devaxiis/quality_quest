import 'package:quality_quest/library.dart';

class DetailDiscoverScreen extends StatelessWidget {
  const DetailDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 25,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -20),
                    color: Colors.blueGrey.withOpacity(.8),
                    blurRadius: 100,
                    spreadRadius: 10,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListWheelScrollView.useDelegate(
                childDelegate: ListWheelChildBuilderDelegate(
                  builder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: Colors.blueGrey.shade500,
                          width: 2,
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              height: double.infinity,
                              child: Image(
                                image: const AssetImage('assets/images/idea.jpg'),
                                height: 140,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) =>
                                    const CircularProgressIndicator.adaptive(),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Back to School. Get Smarter...",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800,
                                      ),
                                ),
                                const SizedBox(height: 26),
                                Row(
                                  children: [
                                    const Text(
                                      "2 years ago",
                                    ),
                                    const SizedBox(width: 15),
                                    CircleAvatar(
                                      backgroundColor: Colors.grey.shade800,
                                      maxRadius: 3.3,
                                    ),
                                    const SizedBox(width: 15),
                                    const Text("15.7K plays"),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                const Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/images/img_profile_circle.png',
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Text('Edgar Torrey'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                itemExtent: 200,
                diameterRatio: 6.5,
              ),
            ),
            Container(
              height: 25,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, -10),
                    color: Colors.blueGrey.withOpacity(.8),
                    blurRadius: 100,
                    spreadRadius: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
