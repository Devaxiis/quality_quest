import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quality_quest/domain/model/registration/sign_in_model/sign_in_model.dart';
import 'package:quality_quest/domain/model/registration/sign_up_model/sign_up_model.dart';


class HiveUser {
  static String todoDB = "usersDb";
  static String todos = "users";
  static String currentUser = "currentUser";
  static String user = "user";

  static Box<List> box = Hive.box(todoDB);
  static Box<Map> currentUserBox = Hive.box(currentUser);

  static Future<void> init() async{
    await Hive.initFlutter();
    if(!Hive.isBoxOpen(todoDB)) {
      await Hive.openBox<List>(todoDB);
    }
    if(!Hive.isBoxOpen(currentUser)) {
      await Hive.openBox<Map>(currentUser);
    }
  }


  Future<void> storeData(SignUp user) async {
    List<Map<String, Object?>> response = getData;
    response.add(user.toJson());
    await box.put(todos, response);
  }



  ValueListenable<Box<List>> get getListenable => box.listenable();

  List<Map<String, Object?>> get getData {
    final data = box.get(todos) ?? [];
    return data.map((e) => Map<String, Object?>.from(e)).toList();
  }


  Future<void> saveUser(SignIn loginUser) async {
    await currentUserBox.put(user, loginUser.toJson());
  }

  Map<String, Object?>? getUser() {
    final data = currentUserBox.get(user);
    if(data == null) return null;
    return Map<String, Object?>.from(data);
  }

  Future<void> clearUser() async {
    await currentUserBox.delete(user);
  }







}