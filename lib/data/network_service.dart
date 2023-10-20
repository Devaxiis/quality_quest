import 'package:dio/dio.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'package:quality_quest/data/dio_interseptor.dart';
import 'package:quality_quest/data/store.dart';



abstract class Network {
  Future<void> methodPost({required String api,required Map<String, Object?> data});
}


  final dio = Dio();
class HttpService {

  late final Dio _dio;

  HttpService(){
    _dio = Dio();
    _dio.interceptors.add(DioInterceptor());
  }


  static Future<void> _saveToken(Map<String,dynamic> data)async{
    final token = data["accessToken"];
    print("-----------------$token----------------------");
    await Store.setToken(token);
  }

  // #Method SignUp
  static Future<bool> methodSignUpPost({required String api,required Map<String, Object?> data})async{
   try{
     final response =await dio.post("${Api.baseUrl}$api", data: data);
     print("-----------------${response.statusCode}----------------------");
     if(response.statusCode == 200 || response.statusCode == 201){
     return true;
     }else{
       return false;
     }
   }catch(e){
     print("ERROR:===>$e");
   }
   return false;
  }

  // #Method SignIn
  static Future<bool> methodSignInPost({required String api, required Map<String, Object?> data})async{
    try{
      final response =await dio.post("${Api.baseUrl}$api", data: data);
      print("-----------------${response.statusCode}----------------------");
      print("-----------------${response.data}----------------------");
      if(response.statusCode == 200 || response.statusCode == 201){
        _saveToken(response.data);
        return true;
      }else{
        return false;
      }
    }catch(e){
      print("ERROR:===>$e");
    }
    return false;
  }

 


}