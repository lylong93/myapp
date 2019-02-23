import 'package:flutter/material.dart';


class ShopMain extends StatefulWidget{
  ShopMain({this.flag});
  var flag = 2;
  @override
  _ShopMainState createState() => _ShopMainState();
}
class _ShopMainState extends State<ShopMain> {
  @override
  Widget build(BuildContext context) {
    if (widget.flag == 1) {
      return Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
          ],
        ),
      );
    } else if (widget.flag == 2) {
      return Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
          ],
        ),
      );
    } else if (widget.flag == 3) {
      return Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
            Container(
              height: 70.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            ),
          ],
        ),
      );
    } else if(widget.flag == 4) {
        return Container(
          child: Text('ok'),
        );
    }
  }
}
