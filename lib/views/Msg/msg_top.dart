import 'package:flutter/material.dart';
import 'package:myapp/views/Me/Class/index.dart';

class MsgTop extends StatelessWidget {
  final List items = [
    ListItem(iconData: Icons.location_on, title: '解锁', color: Colors.red),
    ListItem(iconData: Icons.ondemand_video, title: '游戏', color: Colors.green),
    ListItem(iconData: Icons.local_taxi, title: '可以', color: Colors.blue),
  ];

  Iterable _buildItem() {
    return this
        .items
        .map((n) => Container(
              padding: EdgeInsets.only(left: 6.0, right: 6.0),
              decoration: BoxDecoration(),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: n.color,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    child: Icon(
                      n.toJson()['iconData'], // 'Icons.local_taxi',
                      size: 30.0,
                      color: Colors.white
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text(n.toJson()['title'],
                        style: TextStyle(color: Colors.black, fontSize: 18.0)),
                  ),
                ],
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding:
              EdgeInsets.only(left: 10.0, right: 10.0, top: 30.0, bottom: 30.0),
          margin: EdgeInsets.only(bottom: 10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _buildItem(),
          ),
        ),
      ],
    );
  }
}
