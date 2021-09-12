import 'dart:convert';

import 'package:paioneers_task/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {

  saveUser(User user) async {
    final prefs= await SharedPreferences.getInstance();
    String userStr=json.encode(user.data.toJson());
    prefs.setString('user', userStr);
    prefs.commit();
  }

  Future<User>getUser()async{
    final prefs= await SharedPreferences.getInstance();
    String userStr=prefs.getString('user');
    User user=User(success: true);
    if(userStr!=null){
      user.data=UserData.fromJson(json.decode(userStr));
      print(user.data.toJson());
      return user;
    }
    return User(success: false);
  }
}
