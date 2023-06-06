import 'dart:convert';
import 'package:ecommerce/utility/utility.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../style/style.dart';

var BaseURL="http://temp.techsolutions-bd.com";
var RequestHeader={"Content-Type":"application/json"};

class HeaderWithToken{
static Future<Map<String,String>>getHeaderwithToken()async {
  final prefs = await SharedPreferences.getInstance();
  var headerwithToken = {
    "Accept": "application/json",
    "Authorization": "Bearer ${ReadData("token")}"
  };
  print("HeaderWith token: $headerwithToken");
  return headerwithToken;
}
}

Future<dynamic>SigninRequest(FormValues) async{
  print("In the signin request");

  var URL=Uri.parse("${BaseURL}/api/admin/sign-in");
  print("url: $URL");

  var PostBody=json.encode(FormValues);
  print("body: $PostBody");

  var response=await http.post(URL,headers:RequestHeader,body:PostBody);
  print("response: $response");

  var ResultCode=response.statusCode;
  print("ResultCode: $ResultCode");

  var ResultBody=json.decode(response.body);
  print("ResultBody: $ResultBody");

  if(ResultCode==200){
    SuccessToast("Request Success");
    await SaveToken(ResultBody);
    print("Success Req");
    return true;
  }
  else{
    ErrorToast("Request fail ! try again");

    return false;


  }
}
// Future<dynamic>AdminProfileRequest(FormValues)async{
//   var URL=Uri.parse("${BaseURL}/api/admin/profile");
//   print("URL Profile Admin: $URL");
//   var response=await http.get(URL,headers:await HeaderWithToken.getHeaderwithToken());
//   print("Response Profile Admin: $response");
//
// }