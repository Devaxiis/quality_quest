import 'package:quality_quest/library.dart';

class DetailDiscoverScreen extends StatelessWidget {
  const DetailDiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        forceMaterialTransparency: true,
        title: Text(
          "QualityQuest",
          style: TextStyle(
            fontSize: 23,
            color: Colors.deepPurpleAccent.shade700,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListWheelScrollView.useDelegate(
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 20,
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
                          child: Container(
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/idea.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(18),
                                topLeft: Radius.circular(18),
                              ),
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
              diameterRatio: 7.5,
            ),
          ),
          Container(
            height: 1,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.white,
                  blurRadius: 128,
                  spreadRadius: 70,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
