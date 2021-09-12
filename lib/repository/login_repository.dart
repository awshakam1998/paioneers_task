import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:paioneers_task/model/user.dart';

Future<User> login(Map<String, String> body) async{
  User user = User();
  String url='https://hr.smartmediajo.com/system/api/login';
  http.Response response= await http.post(url,body: body);
  print(response.statusCode);
  if(response.statusCode==200)
    {
      user= userFromJson(response.body);
      return user;
    }

  return User(success: false);
}
