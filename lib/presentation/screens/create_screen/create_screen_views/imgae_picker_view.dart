import 'package:quality_quest/library.dart';

class CustomImagePicker extends StatelessWidget {
  const CustomImagePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF7658FF),
            width: 2.3,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            IconButton(
              onPressed: () {},
              icon: const Image(
                height: 50,
                width: 50,
                image: AssetImage('assets/icons/ic_gallery.png'),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Add Cover Image",
              style: TextStyle(
                color: Color(0xFF6949FF),
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}