
import 'package:shared_preferences/shared_preferences.dart';

Future<dynamic>SaveToken(data) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString("token",data["access_token"]);
  print("Saved token is ${prefs.getString("token")}");
  return data;
}

Future<dynamic>ReadData(key)async{
  final prefs=await SharedPreferences.getInstance();
  String? mydata=await prefs.getString(key);
  return mydata;
}
Future<bool>RemoveToken()async{
  final prefs=await SharedPreferences.getInstance();
  prefs.clear();
  return true;
}