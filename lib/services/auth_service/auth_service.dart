// import 'package:flutter/foundation.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:quality_quest/domain/model/registration/logo_out/logo_out.dart';
// import 'package:quality_quest/domain/model/registration/sign_in_model/sign_in_model.dart';
// import 'package:quality_quest/domain/model/registration/sign_up_model/sign_up_model.dart';
// import 'package:quality_quest/domain/model/registration/token_model/token_mode.dart';
//
//
// class HiveUser {
//   static String todoDB = "usersDb";
//   static String todos = "users";
//   static String currentUser = "currentUser";
//   static String user = "user";
//   static String token = "token";
//
//   static Box<List> box = Hive.box(todoDB);
//   static Box<Map> currentUserBox = Hive.box(currentUser);
//
//   static Future<void> init() async{
//     await Hive.initFlutter();
//     if(!Hive.isBoxOpen(todoDB)) {
//       await Hive.openBox<List>(todoDB);
//     }
//     if(!Hive.isBoxOpen(currentUser)) {
//       await Hive.openBox<Map>(currentUser);
//     }
//   }
//
//
//   Future<void> storeData(SignUp user) async {
//     List<Map<String, Object?>> response = getData;
//     response.add(user.toJson());
//     await box.put(todos, response);
//   }
//
//
//   // Future<void> storeToken(TokenModel token) async {
//   //   List<Map<String, Object?>> response = getToken;
//   //   response.add(token.toJson());
//   //   await box.put(token, response);
//   // }
//
//
//
//   ValueListenable<Box<List>> get getListenable => box.listenable();
//
//   List<Map<String, Object?>> get getData {
//     final data = box.get(todos) ?? [];
//     return data.map((e) => Map<String, Object?>.from(e)).toList();
//   }
//
//   // List<Map<String, Object?>> get getToken {
//   //   final data = box.get(token) ?? [];
//   //   return data.map((e) => Map<String, Object?>.from(e)).toList();
//   // }
//
//
//   Future<void> saveUser(SignIn loginUser) async {
//     await currentUserBox.put(user, loginUser.toJson());
//   }
//
//   Map<String, Object?>? getUser() {
//     final data = currentUserBox.get(user);
//     if(data == null) return null;
//     return Map<String, Object?>.from(data);
//   }
//
//   Future<void> clearUser() async {
//     await currentUserBox.delete(user);
//   }
//
// }
//
//
// // final class LocalSource {
// //   const LocalSource(this.box);
// //
// //   final Box<dynamic> box;
// //
// //   void setHasProfile({
// //     required bool value,
// //   }) {
// //     box.put(AppKeys.hasProfile, value);
// //   }
// //
// //   bool get hasProfile =>
// //       box.get(AppKeys.hasProfile, defaultValue: false) as bool;
// //
// //   Future<void> setUser({
// //     required String name,
// //     required String accessToken,
// //     required String refreshToken,
// //     required String userId,
// //     required String imageUrl,
// //     required String phone,
// //     required String email,
// //     required String login,
// //   }) async {
// //     await box.put(AppKeys.hasProfile, true);
// //     await box.put(AppKeys.phone, phone);
// //     await box.put(AppKeys.login, login);
// //     await box.put(AppKeys.email, email);
// //     await box.put(AppKeys.fullName, name);
// //     await box.put(AppKeys.accessToken, accessToken);
// //     await box.put(AppKeys.refreshToken, refreshToken);
// //     await box.put(AppKeys.userId, userId);
// //     await box.put(AppKeys.imageUrl, imageUrl);
// //   }
// //
// //   String get accessToken =>
// //       box.get(AppKeys.accessToken, defaultValue: '') as String;
// //
// //   String get fullName => box.get(AppKeys.fullName, defaultValue: '') as String;
// //
// //   String get userId => box.get(AppKeys.userId, defaultValue: '') as String;
// //
// //   String get locale => box.get(AppKeys.languageCode,defaultValue: defaultLocale,) as String;
// //
// //   bool get lanSelected =>
// //       box.get(AppKeys.langSelected, defaultValue: false) is bool
// //           ? box.get(AppKeys.langSelected, defaultValue: false) as bool
// //           : false;
// //
// //   Future<void> setThemeMode(ThemeMode mode) async {
// //     await box.put(AppKeys.themeMode, mode.name);
// //   }
// //
// //   Future<void> setLocale(String lang) async {
// //     await box.put(AppKeys.languageCode, lang);
// //   }
// //
// //   Future<void> setKey(String key, String value) async {
// //     await box.put(key, value);
// //   }
// //
// //   Future<void> setLangSelected({
// //     required bool value,
// //   }) async {
// //     await box.put(AppKeys.langSelected, value);
// //   }
// //
// //   String getKey(String key) => box.get(key, defaultValue: '') as String;
// //
// //   ThemeMode get themeMode => switch (box.get(AppKeys.themeMode)) {
// //     'system' => ThemeMode.system,
// //     'light' => ThemeMode.light,
// //     'dark' => ThemeMode.dark,
// //     _ => ThemeMode.system,
// //   };
// //
// //   Future<void> clear() async {
// //     await box.clear();
// //   }
// //
// //   Future<void> userClear() async {
// //     await box.delete(AppKeys.hasProfile);
// //     await box.delete(AppKeys.phone);
// //     await box.delete(AppKeys.email);
// //     await box.delete(AppKeys.fullName);
// //     await box.delete(AppKeys.accessToken);
// //     await box.delete(AppKeys.refreshToken);
// //     await box.delete(AppKeys.userId);
// //     await box.delete(AppKeys.imageUrl);
// //   }
// // }