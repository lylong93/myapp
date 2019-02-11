import 'package:flutter/material.dart';
import 'package:myapp/models/home.dart';
import 'dart:convert';
class _Unfold extends StatefulWidget {
  _Unfold({this.text});
  final String text;
  @override
  _UnfoldState createState() => _UnfoldState();
}

class _UnfoldState extends State<_Unfold> {
  bool showmore = false;
  TextOverflow _overflow = TextOverflow.ellipsis;
  num _maxLines = 2;
  @override
  Widget build(BuildContext context) {
    if (this.showmore) {
      _overflow = TextOverflow.clip;
      _maxLines = null;
    } else {
      _overflow = TextOverflow.ellipsis;
      _maxLines = 2;
    }
    return Stack(alignment: const Alignment(0.9, 1), children: [
      Text(
        widget.text,
        maxLines: _maxLines,
        overflow: _overflow,
      ),
      GestureDetector(
        onTap: () {
          setState(() {
            this.showmore = !this.showmore;
            print(this.showmore);
          });
        },
        child: Text(
          '展开',
          style: TextStyle(color: Colors.red),
        ),
      ),
    ]);
  }
}

class _FootIcon extends StatelessWidget {
  final String num;
  final Widget icon;
  _FootIcon({this.num,this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: 3,
          child: Text(
            this.num,
            style: TextStyle(fontSize: 10.0, color: Colors.red),
          ),
        ),
        Container(
          alignment: Alignment(-1, 0),
          decoration: BoxDecoration(),
          width: 45.0,
          child: icon,
        ),
      ],
    );
  }
}

class LeftCard extends StatelessWidget {
  LeftCard({this.name, this.bgimg, this.text, this.num});
  final String name;
  final String bgimg;
  final String text;
  final Num num;

  final List list = [0,1,2];
  final List nlist = ['one', 'tow', 'three'];
  final List icons = [Icon(Icons.grade),Icon(Icons.gradient), Icon(Icons.hd)];

  List<Widget> _build() {
    return list.map((item){
      var i = nlist[item];
      return _FootIcon(num: num.toJson()['$i'].toString(),icon:icons[item]);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
        margin: const EdgeInsets.only(bottom: 5.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(144, 144, 144, 1),
        ),
        child: Column(
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Flex(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(children: [
                      CircleAvatar(),
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        child: Text(this.name),
                      ),
                    ]),
                    Icon(Icons.share)
                  ],
                )),
            FadeInImage(
              height: 300.0,
              placeholder: NetworkImage(
                  'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
              image: NetworkImage(this.bgimg),
            ),
            _Unfold(
              text: this.text,
            ),
            Flex(
              crossAxisAlignment: CrossAxisAlignment.center,
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _FootIcon(num: '1',icon:Icon(Icons.grade)),
                Row(
                  children: _build(),
                )
              ],
            ),
          ],
        ));
  }
}
