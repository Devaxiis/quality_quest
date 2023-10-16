import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        height: 230.sp,
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
             Text(
              Strings.addCoverImageTXT,
              style: Style.createAddCoverImageST,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
