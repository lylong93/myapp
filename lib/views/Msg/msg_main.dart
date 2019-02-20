import 'package:flutter/material.dart';

class MsgMain extends StatelessWidget {
  MsgMain({this.text,this.tip});
  String text;
  String tip;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key:Key('1'),
        direction:DismissDirection.endToStart,
        background: Container(
        margin: EdgeInsets.only(top:10.0),
        decoration:BoxDecoration(
          gradient:LinearGradient(colors: [Colors.yellow,Colors.red],stops:[0.1,0.9])
        ),
        child: Flex(
          mainAxisAlignment:MainAxisAlignment.end,
          direction: Axis.horizontal,
          children: <Widget>[ 
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: Text('删除',style: TextStyle(fontSize: 25.0),),
            )
          ],
        ),
       
        ),
        onDismissed:(index) {
          // items.removeAt(index);
          print(index);
        },
        child:
         Container(
            margin: EdgeInsets.only(top:10.0),
            color: Colors.amberAccent,
            padding: EdgeInsets.all(15.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 15.0),
                        child: CircleAvatar(),
                      ),
                      Column(
                        children: <Widget>[Text(text), Text(text)],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      // Text(tip),
                      Icon(
                        Icons.info,
                        size: 18.0,
                      )
                    ],
                  )
                ]))
                );
  }
}
