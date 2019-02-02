import 'package:flutter/material.dart';
import './recomm.dart';
import 'dart:convert';
import './leftcard.dart';

import 'package:myapp/models/home.dart';

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
  _build() {
    List<Widget> end = [];
    list.forEach((item) {
      var jsonText = jsonEncode(item);
      print(jsonText);
      // print(userMap);
      // var user = new HomeItem.fromJson(userMap);
      // print(f);
      //  print(user);
      // print(jsonDecode('name'));
      end..add(LeftCard(name:'name'));
    });
    // end.insert(0,Recomm());
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
