import 'package:shared_preferences/shared_preferences.dart';

sealed class Store{
  static const String _tokenKey = "TOKEN";

  static Future<void> setToken(String token) async{
    final preferences =await SharedPreferences.getInstance();
    await preferences.setString(_tokenKey, token);
  }

  static Future<String?> getToken() async{
    final preferences = await SharedPreferences.getInstance();
    return preferences.getString(_tokenKey);
  }

  static Future<void> clear()async{
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }

}

sealed class UserSave{
  static const String _todoDB = "usersDb";


  static Future<void> setUser(String email,String password) async{
    final preferenc =await SharedPreferences.getInstance();
    await preferenc.setString(_todoDB, "$email,$password");
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