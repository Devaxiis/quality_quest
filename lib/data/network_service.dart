
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'dart:convert';
import 'package:quality_quest/data/dio_interseptor.dart';
import 'package:quality_quest/data/store.dart';
import 'package:quality_quest/domain/model/screens/category_model/category_model.dart';



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


  static Future<String?> multipart({String api = Api.addSciencePhoto, required String filePath, Map<String, String> headers = Api.headers, String baseUrl = Api.baseUrl, Map<String, String>? body}) async {
    final Uri url = Uri.https(baseUrl, api);
    final request = http.MultipartRequest("POST", url);
    request.headers.addAll(headers);
    request.files.add(await http.MultipartFile.fromPath(
        "file", filePath, contentType: MediaType("image", "jpeg")));
    if (body != null) request.fields.addAll(body);
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200 || response.statusCode == 201) {
      return await response.stream.bytesToString();
    } else {
      return null;
    }

  }

}

