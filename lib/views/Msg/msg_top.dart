import 'package:flutter/material.dart';


class MsgTop extends StatefulWidget {
  const MsgTop({ Key key}):super(key: key);

  @override
  _MsgTopState createState() => _MsgTopState();
}

class Item{
  Item({this.iconData,this.text});
  String iconData;
  String text;
}
List items = [
  Item(iconData:'1',text:'2'),
  Item(iconData:'3',text:'5'),
  Item(iconData:'3',text:'6'),
];

Iterable _buildItem() {
  return items
  .map((n) => 
    Container(
      padding: EdgeInsets.only(left:6.0,right:6.0),
      decoration: BoxDecoration(
      ),
      child: Column(
        children: <Widget>[
          Icon(Icons.group_work,size: 50.0,),
          Container(
            margin: EdgeInsets.only(top:10.0),
            child: Text('解锁等级',style: TextStyle(color: Colors.black,fontSize: 18.0)),
          ),
          
        ],
      ),
    )
  )
  .toList();
}
class _MsgTopState extends State<MsgTop> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(left:10.0,right: 10.0,top:30.0,bottom: 30.0),
          margin: EdgeInsets.only(bottom: 10.0),
          child:Row(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children:_buildItem(),
        ),),
        Expanded(
          child: ListView(
            children: <Widget>[
            Text('消息',style: TextStyle(color: Colors.black,fontSize: 50.0),),
            ],
          ),)

        ],
      ),
    );
  }
}