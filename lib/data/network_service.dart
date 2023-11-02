import 'package:quality_quest/core/service_locator.dart';
import 'package:quality_quest/domain/model/get_science/get_science.dart';
import 'package:quality_quest/domain/model/screens/search_model/search_screen_model.dart';
import 'package:quality_quest/domain/repository/repository.dart';
import 'package:quality_quest/library.dart';
import 'package:quality_quest/main.dart';

abstract class Network {
  Future<void> _saveToken(Map<String, dynamic> data);

  Future<bool> methodSignUpPost(
      {required String api, required Map<String, Object?> data});

  Future<bool> methodSignInPost(
      {required String api, required Map<String, Object?> data});

  Future<bool> methodRefreshToken(
      {required String api, required Map<String, Object?> data});

  Future<List<ScienceType>> fetchScienceTypes({required String api});

  Future<bool> logoOut();

  Future<bool> createScience(
      {required String api, required Map<String, Object?> data});

  Future<Map<String, Object?>> userToken();

  Future<bool> methodMakeTest(
      {required String api, required Map<String, Object?> data});

  Future<List<SearchModel>> methodSearchScience({required String api, required String data});

  Future<List<GetScienceModel>> methodGetAllScience({String domain = Api.baseUrl,required String api,});
}

class HttpService implements Network {
  late final Dio _dio;

  HttpService() {
    _dio = Dio();
    _dio.interceptors.add(DioInterceptor());
  }

  // #Save Token
  @override
  Future<void> _saveToken(Map<String, dynamic> data) async {
    final token = data["accessToken"];
    final refToken = data["refreshToken"];
    await Store.setToken(token, refToken);
  }

  // #Method SignUp
  @override
  Future<bool> methodSignUpPost(
      {required String api, required Map<String, Object?> data}) async {
    try {
      final response = await _dio.post(
        "${Api.baseUrl}$api",
        data: data,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      throw Exception("Sign Up ERROR:===>$e");
    }
  }

  // #Method SignIn
  @override
  Future<bool> methodSignInPost(
      {required String api, required Map<String, Object?> data}) async {
    try {
      final response = await _dio.post(
        "${Api.baseUrl}$api",
        data: jsonEncode(data),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        _saveToken(response.data);
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      throw Exception("Sign IN ERROR:===>$e");
    }
  }

  // #Method Refresh Token
  @override
  Future<bool> methodRefreshToken(
      {required String api, required Map<String, Object?> data}) async {
    try {
      final response = await _dio.post(
        "${Api.baseUrl}$api",
        data: jsonEncode(data),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        _saveToken(response.data);
        return true;
      }
      return false;

    } on DioException catch (e) {
      throw Exception("Refresh token ERROR:===>$e");
    }
  }

  // #Method GET Science Type
  @override
  Future<List<ScienceType>> fetchScienceTypes({required String api}) async {
    final response = await _dio.get("${Api.baseUrl}$api");
    if (response.statusCode == 200 || response.statusCode == 201) {
      final List jsonList = response.data;
      final data = jsonList
          .map((json) => ScienceType.fromJson(json as Map<String, Object?>))
          .toList();
      return data;
    } else {
      throw Exception('Failed to fetch science types');
    }
  }

  // #Method Logo0ut
  @override
  Future<bool> logoOut() async {
    try {
      await Store.clear();
      return true;
    } on DioException catch (e) {
      throw Exception("Logo out ERROR:===>$e");
    }
  }

  // #Method Create Science
  @override
  Future<bool> createScience(
      {required String api, required Map<String, Object?> data}) async {
    try {
      final response = await _dio.post("${Api.baseUrl}$api", data: data);
      scienceID = response.data["id"];
      // print("====>>>> ${response.data["id"]}<<<<<=====");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } on DioException catch (e) {
      throw Exception("Create Science ERROR:===>$e");
    }
  }

  // #Method UserToken
  @override
  Future<Map<String, Object?>> userToken() async {
    try {
      final data = await Store.getToken();
      final reponse = JwtDecoder.decode(data!);
      return reponse;
    } on DioException catch (e) {
      throw Exception("UserToken:::$e");
    }
  }

  @override
  Future<bool> methodMakeTest(
      {required String api, required Map<String, Object?> data}) async {
    try {
      final response = await _dio.post("${Api.baseUrl}$api", data: data);
      if (response.statusCode == 201 || response.statusCode == 200) {
        // print("Data::::::=====>${response.data}");
        return true;
      }
      return false;
    } on DioException catch (e) {
      throw Exception("MethodMakeTest:::  $e");
    }
  }

  @override
  Future<List<SearchModel>> methodSearchScience(
      {required String api, required String data}) async {
    try {

      final response = await _dio.get("${Api.baseUrl}$api$data");
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List jsonList = response.data;
        final searchedList = jsonList.map((json) => SearchModel.fromJson(json as Map<String, Object?>)).toList();
        return searchedList;
      }
      return [];
    } on DioException catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<GetScienceModel>> methodGetAllScience({String domain = Api.baseUrl, required String api}) async{
    try{
      final response = await _dio.get("$domain$api");
      if(response.statusCode == 200){
        List<GetScienceModel> data =[];
        final List json = response.data;
        print(json);
        data = json.map((e) => GetScienceModel.fromJson(e as Map<String,Object?>)).toList();
        print(data);
        return data;
      }
      return [];
    }on DioException catch(e){
      throw Exception("DioE::::$e");
    }

  }


}
