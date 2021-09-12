import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:paioneers_task/model/photo.dart';
import 'package:http/http.dart' as http;

Future<List<Photo> > fetchPhoto() async {
  List<Photo> _photoList =List<Photo>();
  final response =
  await http.get('https://jsonplaceholder.typicode.com/photos');//End point
  if (response.statusCode == 200) {
    List<dynamic> values=new List<dynamic>();
    values = json.decode(response.body);
    if(values.length>0){
      for(int i=0;i<values.length;i++){
        if(values[i]!=null){
          Map<String,dynamic> map=values[i];
          _photoList .add(Photo.fromJson(map));
        }
      }
    }
    return _photoList;
  }
  return List<Photo>();
}



/*
* Backend -> url + Method(get/ post/ put /delete) ->request
*  response - >  statuscode (200,300,400,500)
*  */

Future <List<Photo>>getPhoto()async{
  List<Photo> photos=[];
String url ='https://jsonplaceholder.typicode.com/photos';
http.Response response=await http.get(url);
if(response.statusCode==200) {
    print(response.body);
    photos= photoFromJson(response.body);
    return photos;
  }
return [];
}



