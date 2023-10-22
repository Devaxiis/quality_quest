import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'package:quality_quest/library.dart';

class CustomImagePicker extends StatelessWidget {
  final File? image;
  final Function ontab;
  const CustomImagePicker({super.key, this.image, required this.ontab,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab(),
      child: image == null
          ? Container(
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
                    onPressed: ontab(),
                    icon: const Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('assets/icons/ic_gallery.png'),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    Strings.addCoverImageTXT,
                    style: Style.createAddCoverImageST,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          : Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.oxFF9E9E9E,
                    offset: Offset(0, 0),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Image.file(
                image!,
                height: 220.sp,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
    );
  }
}
