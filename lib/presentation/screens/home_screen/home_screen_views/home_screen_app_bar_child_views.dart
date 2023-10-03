import 'package:quality_quest/library.dart';

// ignore: must_be_immutable
class AppBarChildView extends StatefulWidget {
  int currentIndex;

  AppBarChildView({
    super.key,
    required this.currentIndex,
  });

  @override
  State<AppBarChildView> createState() => _AppBarChildViewState();
}

class _AppBarChildViewState extends State<AppBarChildView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              widget.currentIndex = 0;
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 3.5,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                border: Border.all(color: Colors.deepPurple),
                color: widget.currentIndex == 0
                    ? Colors.deepPurpleAccent.shade700
                    : Colors.white,
              ),
              child: Text(
                'Up to 10',
                style: TextStyle(
                  color: widget.currentIndex == 0
                      ? Colors.white
                      : Colors.deepPurple,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.currentIndex = 1;
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 3.5,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                border: Border.all(color: Colors.deepPurple),
                color: widget.currentIndex == 1
                    ? Colors.deepPurpleAccent.shade700
                    : Colors.white,
              ),
              child: Text(
                'Up to 20',
                style: TextStyle(
                  color: widget.currentIndex == 1
                      ? Colors.white
                      : Colors.deepPurple,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.currentIndex = 2;
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 3.5,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                border: Border.all(color: Colors.deepPurple),
                color: widget.currentIndex == 2
                    ? Colors.deepPurpleAccent.shade700
                    : Colors.white,
              ),
              child: Text(
                'Up to 30',
                style: TextStyle(
                  color: widget.currentIndex == 2
                      ? Colors.white
                      : Colors.deepPurple,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
