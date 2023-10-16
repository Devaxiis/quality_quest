import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:quality_quest/core/params/aps.dart';


abstract class Network {
  Future<void> methodPost({required String api, String baseUrl = Api.baseUrl, required Map<String, Object?> data});
}


class HttpService {
  static Future<bool> methodSignUpPost({required String api,String baseUrl = Api.baseUrl, required Map<String, Object?> data})async {
    try{
      Uri url = Uri.http(baseUrl,Api.apiSignUp);
      final response = await http.post(url,headers: Api.headers, body: jsonEncode(data));
      print(response.statusCode);
      print("---------------${response.body}-----------");
      if(response.statusCode == 200 || response.statusCode == 201) {
        debugPrint(response.body);
        return true;
      }else {
        return true;
      }
    }catch(e){
      debugPrint(e.toString());
    }
    return false;
  }

  static Future<bool> methodSignInPost({required String api,String baseUrl = Api.baseUrl, required Map<String, Object?> data})async {
    try{
      Uri url = Uri.http(baseUrl,Api.apiSignIN);
      print("-----------------$url-----------");
      print("-----------------$data-----------");
      final response = await http.post(url,headers: Api.headers, body: jsonEncode(data));
      print("-----------------${response.statusCode}-----------");

        return true;
    }catch(e){
      debugPrint(e.toString());
    }

    return false;
  }

}