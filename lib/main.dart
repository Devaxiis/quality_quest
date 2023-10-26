import 'package:flutter/material.dart';
import 'package:quality_quest/data/store.dart';
import 'app.dart';


late final user;
late final users;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  user = await Store.getToken();
  users = await Store.getRefreshToken();
  runApp(const MyApp());
}

