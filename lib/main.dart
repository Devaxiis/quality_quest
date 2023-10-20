import 'package:flutter/material.dart';
import 'package:quality_quest/data/store.dart';
import 'package:quality_quest/services/auth_service/auth_service.dart';
import 'app.dart';

// HiveUser auth = HiveUser();
late final user;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  user = await Store.getToken();
  // await HiveUser.init();
  runApp(const MyApp());
}

