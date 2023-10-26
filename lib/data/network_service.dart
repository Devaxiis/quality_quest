import 'package:quality_quest/library.dart';

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
    _dio.interceptors.add();
  }

  // #Save Token
  static Future<void> _saveToken(Map<String, dynamic> data) async {
    final token = data["accessToken"];
    final refToken = data["refreshToken"];
    await Store.setToken(token, refToken);
  }

  // #Method SignUp
  static Future<bool> methodSignUpPost({
    required String api,
    required Map<String, Object?> data,
  }) async {
    try {
      final response = await dio.post("${Api.baseUrl}$api", data: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception("Sign Up ERROR:===>$e");
    }

  }

  // #Method SignIn
  static Future<bool> methodSignInPost({required String api, required Map<String, Object?> data}) async {
    try {
      final response = await dio.post(
        "${Api.baseUrl}$api",
        data: jsonEncode(data),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        _saveToken(response.data);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception("Sign IN ERROR:===>$e");
    }

  }

  // #Method GET Science Type
  static Future<List<ScienceType>> fetchScienceTypes({
    required String api,
  }) async {
    final response = await dio.get("${Api.baseUrl}$api");
    if (response.statusCode == 200 || response.statusCode == 201) {
      final List jsonList = response.data;
       final data = jsonList.map((json) => ScienceType.fromJson(json as Map<String, Object?>)).toList();
      return data;
    } else {
      throw Exception('Failed to fetch science types');
    }
  }

  // #Method Logo0ut
  static Future<bool> logoOut() async {
    try {
      await Store.clear();
      return true;
    } catch (e) {
      throw Exception("Logo out ERROR:===>$e");
    }

  }

  // #Method Create Science
  static Future<bool> createScience({required String api, required Map<String, Object?> data})async{
    try {
      final response = await dio.post("${Api.baseUrl}$api", data: data);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw Exception("Create Science ERROR:===>$e");
    }

  }


  // #Method UserToken
  static Future<Map<String,Object?>> userToken()async{
    try{
      final data = await Store.getToken();
      final reponse = JwtDecoder.decode(data!);
      return reponse;
    }catch(e){
      throw Exception("UserToken:::$e");
    }
  }

}
