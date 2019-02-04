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

  getdata () async{
    var jsonString = await HomeApi.getTest();
    var user = new HomeItem.fromJson(jsonString);
    print(user.name);
  }
   _build(){
    // print(tt);
    getdata();
    List<Widget> end = [];
    list.forEach((item) {

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
