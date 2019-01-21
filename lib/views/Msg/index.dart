import 'package:flutter/material.dart';
import './msg_top.dart';

class MsgScreen extends StatefulWidget {
  const MsgScreen({Key key}) : super(key: key);

  @override
  _MsgScreenState createState() => _MsgScreenState();
}

class _MsgScreenState extends State<MsgScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('消息',style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body:
      ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        // shrinkWrap: true,
        children: <Widget>[
          MsgTop(),
          Text('消息',
            style: TextStyle(
            color: Colors.black,
          )),
          // Container(
          //   child: Text('o'),
          // ),
          // Container(
          //   child: Column(
          //     children:[
          //       MsgTop(),
          //       MsgTop()
          //     ]
          //   )
          // ),
          // Text('ok')
        ],
      ),
    );
  }
}