import 'package:flutter/cupertino.dart';
import 'package:quality_quest/domain/model/get_science/get_science.dart';
import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/bloc/get_science/get_science_bloc.dart';

class DetailDiscoverScreen extends StatefulWidget {
  final String data;

  const DetailDiscoverScreen({super.key, required this.data});

  @override
  State<DetailDiscoverScreen> createState() => _DetailDiscoverScreenState();
}

class _DetailDiscoverScreenState extends State<DetailDiscoverScreen> {
  List<bool> _isTappedList = [];
  List<GetScienceModel> sortScience = [];

  @override
  void initState() {
    super.initState();
    context.read<GetScienceBloc>().add(GetAllScience(scienceID: widget.data));
    _isTappedList = List.generate(30, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetScienceBloc, GetScienceState>(
      listener: (context, state) {
        if (state is GetScienceSuccess) {
          sortScience = state.getScience;
        }
      },
      child: BlocBuilder<GetScienceBloc, GetScienceState>(
        builder: (context, state) {
          if(state is GetScienceLoading){
            return const Scaffold(body: Center(child: CircularProgressIndicator(),));
          }else {
            return Scaffold(
              // #Background Color
              backgroundColor: CustomColors.oxFFFFFFFF,
              resizeToAvoidBottomInset: true,

              // #AppBar
              appBar: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: false,
                forceMaterialTransparency: true,
                title: Text(
                  Strings.qualityQuestTXT,
                  style: Style.homeDiscoverQualityQuestST,
                ),
              ),

              // #Body
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: sortScience.length,
                        itemBuilder: (context, index) {
                          final scienceData = sortScience[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => const ExamStartSplashScreen(),
                                ),
                              );
                            },
                            child: Container(
                              height: 150.sp,
                              width: MediaQuery
                                  .sizeOf(context)
                                  .width / 1.5,
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
                                  color: CustomColors.oxFF607D8B,
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
                                          image: AssetImage(
                                              'assets/images/idea.jpg'),
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
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        const Spacer(),
                                        Text(
                                          scienceData.name,
                                          style: TextStyle(
                                            color: CustomColors.oxFF000000,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 20.sp,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const Spacer(),
                                        Text(
                                          "Savollar soni:  ${scienceData.countQuizzes}",
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                        const Spacer(),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: const AssetImage(
                                                'assets/images/img_profile_circle.png',
                                              ),
                                              radius: 20.sp,
                                            ),
                                            SizedBox(width: 20.sp),
                                            Text(
                                              'Edgar Torrey',
                                              style: TextStyle(
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 20.sp),
                                            IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _isTappedList[index] =
                                                  !_isTappedList[index];
                                                });
                                              },
                                              icon: _isTappedList[index]
                                                  ? const Icon(
                                                CupertinoIcons.bookmark_fill,
                                                color: CustomColors.oxFFD32F2F,
                                              )
                                                  : const Icon(
                                                  CupertinoIcons.bookmark),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 1.sp,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: CustomColors.oxFFFFFFFF,
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
          },
      ),
    );
  }
}
