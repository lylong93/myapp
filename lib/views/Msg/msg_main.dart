import 'package:flutter/material.dart';

class MsgMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
        // secondaryBackground:Text('keyi'),
        key:Key('1'),
        direction:DismissDirection.endToStart,
        background: Container(color: Colors.red,child: Text('删除'),),
        onDismissed:(index) {
          // items.removeAt(index);
          print(index);
        },
        child: Container(
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
                        children: <Widget>[Text('星期五'), Text('星期五')],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('星期五'),
                      Icon(
                        Icons.info,
                        size: 12.0,
                      )
                    ],
                  )
                ])));
  }
}
