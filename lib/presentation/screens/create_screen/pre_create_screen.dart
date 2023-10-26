import 'package:date_time/date_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:quality_quest/library.dart';

class PreCreateScreen extends StatefulWidget {
  const PreCreateScreen({super.key});

  @override
  State<PreCreateScreen> createState() => _PreCreateScreenState();
}

class _PreCreateScreenState extends State<PreCreateScreen> {
  File? image;
  bool _toggleSwitch = false;
  late int index;
  Map<String,dynamic> data = {};
  String chooseCategory = "...";
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<UserTokenBloc>().add(UserTokenGetEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// #background color
      backgroundColor: CustomColors.oxFFFFFFFF,

      /// #App Bar
      appBar: AppBar(
        backgroundColor: CustomColors.oxFFFFFFFF,
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          Strings.createQuizTXT,
          style: Style.createQuizST,
        ),
      ),

      /// #Body
      body: MultiBlocListener(
        listeners: [
          BlocListener<CreateScienceBloc, CreateScienceState>(
            listener: (context, state) {
              if (state is CreateScienceFailure) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const MainHomeScreen()));
              }
              if (state is CreateScienceSuccess) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const CreateScreen()));
              }
            },
          ),
          BlocListener<SelectedCategoryBloc, SelectedCategoryState>(
            listener: (context, state) {
              if (state is SelectedCategoryFailure) {
                Navigator.pop(context);
              }
              if (state is SelectedCategorySuccess) {
                chooseCategory = state.item;
                index = state.index;
              }

            },
          ),
          BlocListener<IspublicBloc,IspublicState>(
              listener:(context,state){
                if(state is SelectedCategoryIsPublicSuccessState){
                  _toggleSwitch = state.isPublic!;
                }
              }),
          BlocListener<SetimageBloc,SetimageState>(listener: (context,state){
            if(state is SetImageSuccess){
              image = state.image;
            }
          }),
          BlocListener<UserTokenBloc,UserTokenState>(listener: (context,state){
            if(state is UserTokenSuccess){
              data = state.data;
              print("======>>>>$data");
            }
          }),
        ],
        child: SafeArea(
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
                  const CustomImagePicker(),
                  const SizedBox(height: 30),

                  /// #Exam Name
                  TextField(
                    controller: controller,
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
                    child: BlocBuilder<SelectedCategoryBloc,
                        SelectedCategoryState>(
                      builder: (context, state) {
                        return Row(
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
                                      context.read<SelectedCategoryBloc>().add(
                                          const SelectedEvent(
                                              item: "History", index: 2));
                                      // chooseCategory = ;
                                      // setState(() {});
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
                                      context.read<SelectedCategoryBloc>().add(
                                          const SelectedEvent(
                                              item: "Math", index: 3));

                                      // chooseCategory = "";
                                      // setState(() {});
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
                                      context.read<SelectedCategoryBloc>().add(
                                          const SelectedEvent(
                                              item: "Science", index: 4));
                                      // chooseCategory = "Science";
                                      // setState(() {});
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text(
                                      "English",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w800,
                                        color: CustomColors.oxFFFFFFFF,
                                      ),
                                    ),
                                    onTap: () {
                                      context.read<SelectedCategoryBloc>().add(
                                          const SelectedEvent(
                                              item: "English", index: 4));
                                      // chooseCategory = "Logical";
                                      // setState(() {});
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text(
                                      "Biology",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w800,
                                        color: CustomColors.oxFFFFFFFF,
                                      ),
                                    ),
                                    onTap: () {
                                      context.read<SelectedCategoryBloc>().add(
                                          const SelectedEvent(
                                              item: "Biology", index: 5));
                                      // chooseCategory = "Logical";
                                      // setState(() {});
                                    },
                                  ),
                                  PopupMenuItem(
                                    child: Text(
                                      "National language",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w800,
                                        color: CustomColors.oxFFFFFFFF,
                                      ),
                                    ),
                                    onTap: () {
                                      context.read<SelectedCategoryBloc>().add(
                                          const SelectedEvent(
                                              item: "National language",
                                              index: 6));

                                      // chooseCategory = "Logical";
                                      // setState(() {});
                                    },
                                  ),
                                ];
                              },
                            ),
                          ],
                        );
                      },
                    ),
                  ),

                  /// #isPublic button
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
                          child: BlocBuilder<IspublicBloc,IspublicState>(
                            builder: (context, state) {
                              return CupertinoCheckbox(
                                activeColor: CustomColors.oxFF295ECC,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(7),
                                  ),
                                ),
                                side: const BorderSide(
                                    color: CustomColors.oxFF295ECC),
                                value: _toggleSwitch,
                                onChanged: (ind) {
                                  context.read<IspublicBloc>().add(
                                      SelectedIsPublicEvent(isPublic: ind));
                                },
                              );
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
                        if (controller.text.trim().isNotEmpty &&
                            index.toString().isNotEmpty) {
                          context
                              .read<CreateScienceBloc>()
                              .add(CreateScienceNameEvent(
                                name: controller.text.trim(),
                                isPrivate: _toggleSwitch,
                                scienceTypeId: index,
                                userId: int.parse(data["id"]),
                              ));

                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: const Color(0xff6949ff),
                              content: Text(
                                "please fill in all sections",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp),
                              )));
                        }
                      },
                      displayText: "Next",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
