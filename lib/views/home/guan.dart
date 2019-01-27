import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class YellowBird extends StatefulWidget {
  @override
  _YellowBirdState createState() => _YellowBirdState();
}

class _YellowBirdState extends State<YellowBird> {
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
        'okkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkeokkekjkokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkeokkekjkkjkekjkekkjkeokkekjkkjkeokkekjkkjkekjke',
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

class FootIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          right: 3,
          child: Text(
            '100',
            style: TextStyle(fontSize: 10.0, color: Colors.red),
          ),
        ),
        Container(
          alignment: Alignment(-1, 0),
          decoration: BoxDecoration(),
          width: 45.0,
          child: Icon(Icons.grade),
        ),
      ],
    );
  }
}

class Guan extends StatelessWidget {
  final List<Widget> list = <Widget>[
    Container(
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
                      child: Text('策划小贝'),
                    ),
                  ]),
                  Icon(Icons.share)
                ],
              ),
            ),
            FadeInImage(
              placeholder: NetworkImage(
                  'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
              image: NetworkImage(
                  'http://pic.hsw.cn/0/13/09/09/13090929_929741.jpg'),
            ),
            YellowBird(),
            Flex(
              crossAxisAlignment: CrossAxisAlignment.center,
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FootIcon(),
                Row(
                  children: <Widget>[FootIcon(), FootIcon(), FootIcon()],
                  // Icon(Icons.star),
                )
              ],
            ),
          ],
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(1, 1, 1, .1),
      child: ListView(children: list),
    );
  }
}
