import 'package:flutter/material.dart';
import 'package:quality_quest/services/auth_service/auth_service.dart';
import 'app.dart';

HiveUser auth = HiveUser();

void main() async{
  await HiveUser.init();
  runApp(const MyApp());
}

