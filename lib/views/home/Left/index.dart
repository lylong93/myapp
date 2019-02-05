import 'package:flutter/material.dart';
import './recomm.dart';
import 'dart:convert';
import './leftcard.dart';

import 'package:myapp/models/home.dart';

import 'package:myapp/api/Home/index.dart';

class HomeLeft extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HomeLeftState();
}

class _HomeLeftState extends State<HomeLeft>  {
  List<Widget> end = [
    LeftCard(name: 'name')
  ];

  @override
  void initState() {
    super.initState();
    getdata();
  }
  
  getdata() async {
    var jsonString = await HomeApi.getTest();
    var data = jsonString['list'];
    // end.clear();
    data.forEach((item) {
      var user = new HomeItem.fromJson(item);
      end..add(LeftCard(name: 'name'));
    });
    // print(end);
    // List end = [];
  }

  // _build() {
  //   // final List<Widget> end = [];
  //   // getdata();
  //   // print(end);
  //   // print(end);
  //   // return end;
  // }

  @override
  Widget build(BuildContext context) {
    getdata();
    print(end);
    return Container(
      color: Color.fromRGBO(1, 1, 1, .1),
      child: ListView(children:end),
    );
  }
}
