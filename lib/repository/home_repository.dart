import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:paioneers_task/model/photo.dart';
import 'package:http/http.dart' as http;

Future<List<Photo> > fetchPhoto() async {
  List<Photo> _photoList =List<Photo>();
  final response =
  await http.get('https://jsonplaceholder.typicode.com/photos');
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