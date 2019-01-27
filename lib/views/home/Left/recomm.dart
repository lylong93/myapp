import 'package:flutter/material.dart';

class Recomm extends StatelessWidget {
  List<Widget> _buildList() {
    List data = ['1', '3', '3','6','7'];
    var list = data.map((f) => 
      Container(
        width: 100.0,
        color: Colors.deepOrange,
        margin: EdgeInsets.all(10.0),
        child:Column(
          children: <Widget>[
            Text(f),
            Text('ok')
          ],
        )
      )
    )
    .toList();
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.0,
        child:
            ListView(scrollDirection: Axis.horizontal, children: _buildList()));
  }
}
