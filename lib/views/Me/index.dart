import 'package:flutter/material.dart';
import './me_top.dart';

class MeScreen extends StatefulWidget {
  const MeScreen({ Key key }) : super(key: key);
  @override
  _MeScreenState createState() => _MeScreenState();
}

class _MeScreenState extends State<MeScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green,
        leading:IconButton(
            icon: Icon(Icons.playlist_play),
            onPressed: () {},
        ),
        title:Column(
            children:[
              Text('name'),
              Text('number',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 14.0))
            ]
        )
      ),
      body:MeTop(),
    );
  }
}