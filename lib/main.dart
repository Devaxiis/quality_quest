import 'package:flutter/material.dart';
import 'package:quality_quest/core/service_locator.dart';
import 'package:quality_quest/data/store.dart';
import 'app.dart';


late final user;
late final users;
late final scienceID;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await serviceLocator();
  user = await Store.getToken();
  print("===> $user <===");
  users = await Store.getRefreshToken();
  runApp(const MyApp());
}

