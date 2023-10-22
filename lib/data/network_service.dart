import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:quality_quest/data/dio_interseptor.dart';
import 'package:quality_quest/data/store.dart';
import 'package:quality_quest/domain/model/registration/logo_out/logo_out.dart';



// abstract class Network {
  // Future<void> methodPost({required String api,required Map<String, Object?> data});
  // static Future<void> _saveToken(Map<String,dynamic> data);
  // static Future<bool> methodSignUpPost({required String api,required Map<String, Object?> data});
  // static Future<bool> methodSignInPost({required String api, required Map<String, Object?> data});
// }


final dio = Dio();

class HttpService {
  late final Dio _dio;

  HttpService() {
    _dio = Dio();
    _dio.interceptors.add(DioInterceptor());
  }


  // #Save Token
  static Future<void> _saveToken(Map<String,dynamic> data)async{

    final token = data["accessToken"];
    final refToken = data["refreshToken"];
    print("AccessToken:-----------------$token----------------------");
    print("RefreshToken:-----------------$refToken----------------------");
    await Store.setToken(token,refToken);
  }

  // #Method SignUp
  static Future<bool> methodSignUpPost({
    required String api,
    required Map<String, Object?> data,
  }) async {
    try {
      final response = await dio.post("${Api.baseUrl}$api", data: data);
      print("-----------------${response.statusCode}----------------------");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("SIGN UP ERROR:===>$e");
    }
    return false;
  }

  // #Method SignIn
  static Future<bool> methodSignInPost({
    required String api,
    required Map<String, Object?> data,
  }) async {
    try {
      final response = await dio.post(
        "${Api.baseUrl}$api",
        data: jsonEncode(data),
      );
      print("-----------------${response.statusCode}----------------------");
      print("-----------------${response.data}----------------------");
      if (response.statusCode == 200 || response.statusCode == 201) {
        _saveToken(response.data);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("SIGN IN ERROR:===>$e");
    }
    return false;
  }

  // #Method GET Science Type
  static Future<List<ScienceType>> fetchScienceTypes() async {
    final response = await dio.get("${Api.baseUrl}/api/Science/GetScienceTypes");
    if (response.statusCode == 200) {
      final List<dynamic> jsonList = response.data;
      return jsonList.map((json) => ScienceType.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch science types');
    }
  }
  
   // #Method Logo0ut
  static Future<bool> logoOut()async{
    try{
      await Store.clear();
      return true;
    }catch(e){
      print("Error:--------$e---------");
    }
    return false;
  }

}
