import 'package:flutter/material.dart';

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

class LeftCard extends StatelessWidget {
  LeftCard({this.name});
  final String name;
  final List list = [1, 2, 3];

  List<Widget> _build() {
    return list.map((f) => _FootIcon()).toList();
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
              placeholder: NetworkImage(
                  'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
              image: NetworkImage(
                  'http://pic.hsw.cn/0/13/09/09/13090929_929741.jpg'),
            ),
            _Unfold(
              text: 'oooooooooooooooooooooooooooooooooooooooooooooooooo',
            ),
            Flex(
              crossAxisAlignment: CrossAxisAlignment.center,
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _FootIcon(),
                Row(
                  children: _build(),
                )
              ],
            ),
          ],
        ));
  }
}
