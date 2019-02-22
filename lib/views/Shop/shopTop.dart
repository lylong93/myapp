import 'package:flutter/material.dart';

double _width = 50.0;
buildList() {
  return [
    GestureDetector(
      onTap: () {
        _width = 90.0;
      },
      child: ShopScreen(wi:_width)
    ),
    GestureDetector(
      child: ShopScreen(wi:_width)
    ),
    GestureDetector(
      child: ShopScreen(wi:_width)
    ),
    Container(
      width: 130.0,
      child: Image.network(
          'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
    ),
    Container(
      margin: EdgeInsets.all(10.0),
      width: 80.0,
      child: Image.network(
          'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
    ),
    Container(
      width: 80.0,
      child: Image.network(
          'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
    ),
  ];
}

class ShopScreen extends StatefulWidget {
  ShopScreen({this.wi});
  double wi;

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  void initState() {
    print(widget.wi);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width:widget.wi,
        child: Image.network(
            'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
      );
  }
}
