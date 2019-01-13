import 'package:flutter/material.dart';
import './me_top.dart';
import './me_main.dart';

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
        elevation:0.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor:Colors.white, 
               
        leading:IconButton(
            icon: Icon(Icons.playlist_play,color: Colors.black),
            onPressed: () {
              print(Scaffold);
              Scaffold.of(context).openDrawer();
            }

        ),
        title:Column(
            children:[
              Text('name',style: TextStyle(color:Colors.black)),
              Text('number',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 14.0,color:Colors.black))
            ]
        )
      ),
      
      body:Column(
        children:[
          MeTop(),
          Expanded(
            child:MeMain()
          ),
          // Drawer(
            // child: Text('okokok'),
          // )  
        ]
      ),
      // drawer:Drawer(child: Text('o'),) ,
    );
  }
}