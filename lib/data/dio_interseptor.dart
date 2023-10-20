import 'package:dio/dio.dart';
import 'package:quality_quest/data/store.dart';


class DioInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options,RequestInterceptorHandler handler)async{
    final token = await Store.getToken();
    if(token != null && token.isNotEmpty){
      options.headers['Authorization'] = 'Bearer $token';
    }

    options.headers['Content-Type'] = 'application/json; charset=UTF-8';
    super.onRequest(options, handler);
  }

}


