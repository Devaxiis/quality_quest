import 'package:quality_quest/library.dart';
import 'package:quality_quest/services/constants/colors.dart';
import 'package:quality_quest/services/constants/strings.dart';

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
            color: CustomColors.oxFF7658FF,
            width: 2.3,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              Strings.addCoverImageTXT,
              style: TextStyle(
                color: CustomColors.oxFF6949FF,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}