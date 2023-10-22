import 'package:shared_preferences/shared_preferences.dart';

sealed class Store{
  static const String _tokenKey = "accessToken";
  static const String _refreshToken = "refreshToken";

  static Future<void> setToken(String token,String refToken) async{
    final preferences =await SharedPreferences.getInstance();
    await preferences.setString(_tokenKey, token);
    await preferences.setString(_refreshToken, refToken);
  }

  static Future<String?> getToken() async{
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(_tokenKey);
  }

  static Future<String?> getRefreshToken() async{
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(_refreshToken);
  }

  static Future<void> clear()async{
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

}

sealed class UserSave{
  static const String _todoDB = "usersDb";
  static const String _accessUser = "accessUser";


  static Future<void> setUser({required int id,required String firstname,required String lastname, required String email,required String password}) async{
    final preferenc =await SharedPreferences.getInstance();
    await preferenc.setString(_todoDB, "$id,$firstname,$lastname,$email,$password");
  }
  static Future<void> setAccessUser({required String email,required String password}) async{
    final preferenc =await SharedPreferences.getInstance();

    await preferenc.setString(_accessUser, "$email,$password");
  }


  static Future<String?> getUser() async{
    final preferenc= await SharedPreferences.getInstance();
    return preferenc.getString(_todoDB);
  }

  static Future<void> clear()async{
    final preferenc = await SharedPreferences.getInstance();
    await preferenc.clear();
  }
}