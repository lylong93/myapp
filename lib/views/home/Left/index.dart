import 'package:flutter/material.dart';
import './recomm.dart';
import './leftcard.dart';

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
    list.forEach((f) {
      print(false);
      end..add(LeftCard(name:'o'));
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
