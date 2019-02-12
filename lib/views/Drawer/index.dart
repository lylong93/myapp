import 'package:flutter/material.dart';
import '../Friend/index.dart';

Widget _build (context){
  return Container(
      // padding: EdgeInsets.only(top: 7.0,bottom: 7.0),
      child:GestureDetector(
        onTap:() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FriendScreen()), 
          );
        },
        child:Row(
          children: <Widget>[
              Icon(Icons.playlist_play),
              Text('发现好友'),
            ],
          ),
      )
  );
}

class DrawerSide extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(38.0),
      width: 250.0,
      color: Colors.white,
      child: _buildSide(context),
    );
  }
}

Widget _buildSide (context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('更多',style: TextStyle(fontSize: 25.0)),
      Expanded(
        child: ListView(
          padding: EdgeInsets.only(top:20.0),
          children: <Widget>[
            _build(context),
            Divider(),
          ],
        ),
      )
    ],
  );
}