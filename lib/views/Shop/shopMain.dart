import 'package:flutter/material.dart';

class ShopMain extends StatefulWidget {
  ShopMain({this.flag});
  var flag = 2;
  @override
  _ShopMainState createState() => _ShopMainState();
}

class _ShopMainState extends State<ShopMain> {
  final list = ['a', 'b', 'c', 'd', 'e'];

  List<Widget> _build() {
    return list.map((item) {
      return Column(
        children: <Widget>[
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(152, 152, 152, 1),
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            child:
                Center(child: Text('0', style: TextStyle(color: Colors.white))),
          ),
          Text(
            item,
            textAlign: TextAlign.center,
          ),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.flag == 1) {
      return Container(
        margin: EdgeInsets.only(top: 10.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 100.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _build()),
            ),
            Container(
              height: 100.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _build()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 120.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top:10.0,bottom: 10.0,left: 18.0,right: 18.0),
              height: 100.0,
              decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 192, 192, 1),
                  ),
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 160.0,
                   decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
                Container(
                  height: 150.0,
                  width: 160.0,
                   decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    } else if (widget.flag == 2) {
      return Container(
        margin: EdgeInsets.only(top: 10.0),
        child: Text('tow'),
      );
    } else if (widget.flag == 3) {
      return Container(
          child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 120.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
                Container(
                  height: 120.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(192, 192, 192, 1),
                  ),
                ),
              ],
            ),
      );
    } else if (widget.flag == 4) {
      return Container(
          margin: EdgeInsets.only(top: 10.0),
        child: Text('four'),
      );
    }
  }
}
