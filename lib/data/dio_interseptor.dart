import 'package:dio/dio.dart';
import 'package:quality_quest/core/params/apis.dart';
import 'package:quality_quest/domain/repository/repository.dart';
import 'package:quality_quest/main.dart';

import '../core/service_locator.dart';



class DioInterceptor extends Interceptor{
  @override
  Future<void> onRequest(RequestOptions options,RequestInterceptorHandler handler)async{
    if(user != null && user.isNotEmpty){
      options.headers['Authorization'] = 'Bearer $user';
    }

    options.headers['Content-Type'] = 'application/json; charset=UTF-8';
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if(response.statusCode == 401 ){
        final Map<String, Object?> data = {
          "accessToken": user,
          "refreshToken": users,
        };
        final value = (repository as RepositoryImplementation).network.methodRefreshToken(api: Api.apiRefreshToken, data: data);
        print("======>>>. $value <<<<<<=======");
    }
    super.onResponse(response, handler);
  }
}



