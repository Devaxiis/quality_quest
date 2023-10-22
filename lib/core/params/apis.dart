

sealed class Api{
  // late final token;
  static const baseUrl = "http://nimige2887-001-site1.etempurl.com";

  static const apiSignUp = "/api/Users";
  static const apiSignIN = "/api/Sign/In";
  static const apiLogOut = "/api/Sign/Out";
  static const createScience = "/api/Science/CreateScience";


}
  // static const Map<String, String> headers = {
  //   "Content-Type": "application/json; charset=UTF-8",
  // };


  // static const Map<String, String> headerrs = {
  //   "Authorization": "Bearer ",
  // };


// class DemoApi{
//   late final Dio _dio;
//
//   DemoApi(){
//     _dio = Dio();
//     _dio.interceptors.add(DioInterceptor());
//   }
//
//   // final String _loginUrl = "http://nimige2887-001-site1.etempurl.com/api/Sign/In";
//   // final String _dataUrl = "http://nimige2887-001-site1.etempurl.com/api/Sign/In";
//   // Map<String, dynamic> get _loginData =>{
//   //   "email":"chello@gmail.com",
//   //   "password":"chello23"
//   // };
//   Future<void> _saveToken(Map<String,dynamic> data)async{
//     final token = data["data"]["Token"];
//     await Store.setToken(token);
//   }
//
//
//   String getResult(Map<String,dynamic>json){
//     final List<dynamic> list = json['data'];
//     return 'Received ${list.length} object';
//   }
//
//   Future<bool> dioLogin(String baseUrl,SignIn data)async{
//     final reponse= await _dio.post(
//       baseUrl,
//       data: data,
//     );
//     if(reponse.statusCode == 200 || reponse.statusCode == 201){
//       await _saveToken(reponse.data);
//       return true;
//     }
//     return false;
//   }
//
//   // Future<String> dioGetData()async{
//   //   try{
//   //     final response = await _dio.get(
//   //       _dataUrl,
//   //     );
//   //     return response.data as String;
//   //   }on DioException catch(e){
//   //        return e.response?.data ?? "Error Occurred";
//   //   }
//   // }
// }