import 'dart:convert';
import 'package:http/http.dart' as http;
import '../style/style.dart';

var BaseURL = "http://temp.techsolutions-bd.com";
var RequestHeader = {"Content-Type": "application/json"};

Future<bool> SigninRequest(FormValues) async {
  var URL = Uri.parse("${BaseURL}/api/admin/sign-in");

  var PostBody = json.encode(FormValues);

  var response = await http.post(URL, headers: RequestHeader, body: PostBody);

  var ResultCode = response.statusCode;

  var ResultBody = json.decode(response.body);

  if (ResultCode == 200) {
    SuccessToast("Request Success");
    return true;
    //await TokenAcess(ResultBody) ;
  } else {
    ErrorToast("Request fail ! try again");

    return false;
  }
}
