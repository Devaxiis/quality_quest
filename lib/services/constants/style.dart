import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quality_quest/library.dart';

sealed class Style {
  static const createAccountSt = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
  static const signUpAlertST = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static const helloThereST = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
  static final notHaveAccountST = TextStyle(
    fontSize: 16,
    color: Colors.grey.shade700,
    fontWeight: FontWeight.w600,
  );
  static final signUpST = TextStyle(
    fontSize: 16,
    color: Colors.deepPurple.shade700,
    fontWeight: FontWeight.w600,
  );
  static final welcomeST = TextStyle(
    color: Colors.deepPurple.shade700,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
  static final successfullyCreatedAccountST = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );

  // static final labelTextST =  Theme.of(context).textTheme.labelLarge;
  static const introFirstST = TextStyle(
    color: Color(0xff212121),
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static const introThirdST = TextStyle(
    color: Color(0xff212121),
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static const introSecondST = TextStyle(
    color: Color(0xff212121),
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static const editProfileST =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15);
  static const emailEditST = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 13,
  );
  static const nameEditST = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  static final qualityQuestST = TextStyle(
    color: const Color(0xff6949ff),
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
  );

  // static const titleST = TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 15);
  static const settingsST = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const logoutST = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 23,
    color: Color(0xFFF85656),
  );
  static const sureToLogOutST = TextStyle(fontSize: 18.0);
  static const widgetTitleST = TextStyle(
    fontSize: 17.5,
    fontWeight: FontWeight.w700,
    color: Color(0xFF212121),
  );
  static const notificationST = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  // #music screen
  static const musicEffectST = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const musicTitleST = TextStyle(
    fontSize: 17.5,
    fontWeight: FontWeight.w700,
    color: Color(0xFF212121),
  );

  // #About App Screen
  static const aboutAppST = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const appVersionST = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static const descriptionQualityQuestST = TextStyle(
    fontWeight: FontWeight.w400,
    color: Colors.black87,
    fontSize: 20,
    letterSpacing: -1,
  );

  // #Library
  static final libraryST = TextStyle(
    fontSize: 22.5,
    color: Colors.deepPurpleAccent.shade700,
    fontWeight: FontWeight.w800,
  );

  // #Join
  static const joinSearchST = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
  static const joinTitleST = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
  static final joinFollowingST = TextStyle(
    color: Colors.deepPurpleAccent.shade700,
  );

  // #HomeScreen
  static final homeQualityQuestST = TextStyle(
    fontSize: 22.5,
    color: Colors.deepPurpleAccent.shade700,
    fontWeight: FontWeight.w800,
  );
  static final homeExamQualityQuestST = TextStyle(
    fontSize: 25,
    color: Colors.deepPurpleAccent.shade700,
    fontWeight: FontWeight.w800,
  );
  static const homeExamQuestionST = TextStyle(
    color: Color(0xff6949ff),
    fontSize: 40,
    fontWeight: FontWeight.w800,
  );
  static final homeDiscoverQualityQuestST = TextStyle(
    fontSize: 23,
    color: Colors.deepPurpleAccent.shade700,
    fontWeight: FontWeight.w800,
  );

  // #Create Quiz
  static const createQuizST = TextStyle(
    color: Color(0xFF6949FF),
    fontWeight: FontWeight.w800,
  );
  static final createWantToMakePublicST = TextStyle(
    fontSize: 17.sp,
    color: Colors.grey.shade800,
    fontWeight: FontWeight.w800,
  );
  static final createAddCoverImageST = TextStyle(
    color: const Color(0xFF6949FF),
    fontWeight: FontWeight.w700,
    fontSize: 18.sp,
  );
  static const createAddAnswerST = TextStyle(
    color: Color(0xFF295ECC),
    fontWeight: FontWeight.w800,
    fontSize: 28,
  );
  static const createTextFieldST = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static const createAddYourAnswerST = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static final createCorrectAnswerST = TextStyle(
    color: const Color(0xFF295ECC),
    fontWeight: FontWeight.w800,
    fontSize: 19.sp,
  );
  static final createTextST = TextStyle(
    color: Colors.white,
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
  );
}
