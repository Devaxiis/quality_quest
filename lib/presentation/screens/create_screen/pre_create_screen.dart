import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quality_quest/library.dart';

class PreCreateScreen extends StatefulWidget {
  const PreCreateScreen({super.key});

  @override
  State<PreCreateScreen> createState() => _PreCreateScreenState();
}

class _PreCreateScreenState extends State<PreCreateScreen> {
  bool _toggleSwitch = false;
  String chooseCategory = "Category";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #background color
      backgroundColor: CustomColors.oxFFFFFFFF,

      /// #App Bar
      appBar: AppBar(
        backgroundColor: CustomColors.oxFFFFFFFF,
        forceMaterialTransparency: true,
        centerTitle: true,
        title: const Text(
          Strings.createQuizTXT,
          style: Style.createQuizST,
        ),
      ),

      /// #Body
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),

                /// #Image picker
                 CustomImagePicker(),
                const SizedBox(height: 30),

                /// #Exam Name
                TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        width: 2,
                        color: CustomColors.oxFF6949FF,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        width: 2,
                        color: CustomColors.oxFF6949FF,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        width: 2,
                        color: CustomColors.oxFF6949FF,
                      ),
                    ),
                    hintText: Strings.quizNameTXT,
                    hintStyle: TextStyle(
                      fontSize: 18.sp,
                      color: CustomColors.ox8A000000,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // #scienceType
                Container(
                  height: 65.sp,
                  width: MediaQuery.sizeOf(context).width / 2.5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    border: Border.all(
                      width: 2,
                      color: CustomColors.oxFF6949FF,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        chooseCategory,
                        style: TextStyle(
                          color: CustomColors.oxFF6949FF,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                      PopupMenuButton(
                        iconSize: 30,
                        color: CustomColors.oxFF6949FF,
                        icon: const Icon(Icons.arrow_drop_down_rounded),
                        itemBuilder: (BuildContext context) {
                          return [
                            PopupMenuItem(
                              child: Text(
                                "History",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w800,
                                  color: CustomColors.oxFFFFFFFF,
                                ),
                              ),
                              onTap: () {
                                chooseCategory = "History";
                                setState(() {});
                              },
                            ),
                            PopupMenuItem(
                              child: Text(
                                "Math",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w800,
                                  color: CustomColors.oxFFFFFFFF,
                                ),
                              ),
                              onTap: () {
                                chooseCategory = "Math";
                                setState(() {});
                              },
                            ),
                            PopupMenuItem(
                              child: Text(
                                "Science",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w800,
                                  color: CustomColors.oxFFFFFFFF,
                                ),
                              ),
                              onTap: () {
                                chooseCategory = "Science";
                                setState(() {});
                              },
                            ),
                            PopupMenuItem(
                              child: Text(
                                "Logical",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w800,
                                  color: CustomColors.oxFFFFFFFF,
                                ),
                              ),
                              onTap: () {
                                chooseCategory = "Logical";
                                setState(() {});
                              },
                            ),
                          ];
                        },
                      ),
                    ],
                  ),
                ),

                /// # Public button
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Strings.wantToMakePublicTXT,
                        style: Style.createWantToMakePublicST,
                      ),
                      SizedBox(
                        height: 50.sp,
                        width: 50.sp,
                        child: CupertinoCheckbox(
                          activeColor: CustomColors.oxFF295ECC,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          side:
                              const BorderSide(color: CustomColors.oxFF295ECC),
                          value: _toggleSwitch,
                          onChanged: (ind) {
                            setState(() {
                              _toggleSwitch = !_toggleSwitch;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).width / 3.5),
                /// #Next Button
                Center(
                  child: CustomDeepPurpleButton(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const CreateScreen(),
                        ),
                      );
                    },
                    displayText: "Next",
                  ),
                ),
                // const SizedBox(height: 20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
