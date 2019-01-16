import 'package:flutter/material.dart';
import 'package:myapp/views/Me/Class/index.dart';

class MsgTop extends StatefulWidget {
  final List<Object> items = [
    ListItem(iconData: '1', title: '2'),
    ListItem(iconData: '3', title: '5'),
    ListItem(iconData: '3', title: '6'),
  ];

  @override
  _MsgTopState createState() => _MsgTopState();
}

class _MsgTopState extends State<MsgTop> {
  Iterable _buildItem() {
    return widget.items
        .map((n) => Container(
              padding: EdgeInsets.only(left: 6.0, right: 6.0),
              decoration: BoxDecoration(),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.group_work,
                    size: 50.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Text('解锁等级',
                        style: TextStyle(color: Colors.black, fontSize: 18.0)),
                  ),
                ],
              ),
            ))
        .toList();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
      return Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 30.0, bottom: 30.0),
            margin: EdgeInsets.only(bottom: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _buildItem(),
            ),
          ),
          // Expanded(
          //   child: ListView(
          //     children: <Widget>[
          //       Text('消息',
          //           style: TextStyle(
          //             color: Colors.black,
          //           )),
          //       // Text('消息',style: TextStyle(color: Colors.black,fontSize: 50.0),),
          //     ],
          //   ),
          // )
        ],
      // ),
    );
  }
}
