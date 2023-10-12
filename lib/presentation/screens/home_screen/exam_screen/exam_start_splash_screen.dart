import 'package:quality_quest/library.dart';
import 'package:quality_quest/presentation/screens/home_screen/exam_screen/exam_screen.dart';
import 'package:quality_quest/services/constants/strings.dart';

class ExamStartSplashScreen extends StatefulWidget {
  const ExamStartSplashScreen({super.key});

  @override
  State<ExamStartSplashScreen> createState() => _ExamStartSplashScreenState();
}

class _ExamStartSplashScreenState extends State<ExamStartSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExamSplashCustomButton(text: Strings.startTXT,color: Colors.green,onTab: (){
               Navigator.push(context,MaterialPageRoute(builder: (_)=> const ExamScreen()));
              },
                colorShadow: Colors.green.shade700,
              ),
              ExamSplashCustomButton(text: Strings.exitTXT,color: Colors.red,onTab: (){
                Navigator.pop(context);
              },
                colorShadow: Colors.red.shade700,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExamSplashCustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorShadow;
  final Function onTab;
  const ExamSplashCustomButton({super.key, required this.text, required this.color, required this.onTab, required this.colorShadow});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       return onTab();
      },
      child: Container(
        height: 110,
        alignment: Alignment.topCenter,
        width: MediaQuery.sizeOf(context).width / 1.3,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
            color: colorShadow,
            borderRadius: const BorderRadius.all(Radius.circular(35)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.4),
                offset: const Offset(0,10),
                blurRadius: 10,
                spreadRadius: 1,
              )
            ]
        ),
        child: Container(
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(35)),
            ),
            child:  Text(text,style: const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),

        ),
      ),
    );
  }
}



