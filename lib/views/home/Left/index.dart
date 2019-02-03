import 'package:flutter/material.dart';
import './recomm.dart';
import 'dart:convert';
import './leftcard.dart';

import 'package:myapp/models/home.dart';

import 'package:myapp/api/Home/index.dart';

class HomeLeft extends StatelessWidget {
  final list = [
    {
      'name': '策划1',
    },
    {
      'name': '策划2',
    },
    {
      'name': '策划3',
    }
  ];

  final str ={
  "string": "★★",
  "string2": "★★★★★★",
  "number": 202,
  "number2": 90.12272,
  "boolean": false,
  "regexp": "dP6",
  "absolutePath": "★★ demo",
  "user": {
    "name": "demo"
  },
  "object": {
    "310000": "上海市",
    "320000": "江苏省"
  },
  "array": "AMD"
};

var tt = '{"name":"1"}';

  // static getTest() async {
  //   var o =  await HomeApi.getTest();
  //   print(o);
  // }

  getdata () async{

    var o = await HomeApi.getTest();
    print(o);
    tt = o;
  }
   _build(){
    // print(tt);
    getdata();
    List<Widget> end = [];
    list.forEach((item) {
      // print(str.string);

      var userMap = jsonDecode(tt);
      var user = new HomeItem.fromJson(userMap);


      // String json = jsonEncode(str);
      // print(user.name);
      // Map userMap = jsonDecode(str);
      // var user = new HomeItem.fromJson(userMap);
      // print(jsonText);
      // print(userMap);
      // var user = new HomeItem.fromJson(item);
      // print(userMap);
      end..add(LeftCard(name:'name'));
    });
    return end;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(1, 1, 1, .1),
      child: ListView(children: _build()),
    );
  }
}
