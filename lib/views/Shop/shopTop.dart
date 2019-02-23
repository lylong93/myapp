import 'package:flutter/material.dart';

double _width = 50.0;
buildList() {
  return [
    Container(
      margin: EdgeInsets.all(10.0),
      width: 50,
      child: Image.network(
          'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
    ),
    Container(
      margin: EdgeInsets.all(10.0),
      width: 50,
      child: Image.network(
          'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
    ),
    Container(
      margin: EdgeInsets.all(10.0),
      width: 50,
      child: Image.network(
          'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
    ),
    Container(
      margin: EdgeInsets.all(10.0),
      width: 50,
      child: Image.network(
          'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
    ),
    Container(
      margin: EdgeInsets.all(10.0),
      width: 50,
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
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.wi = 130.0;
          });
        },
        child: Container(
          margin: EdgeInsets.all(10.0),
          width: widget.wi,
          child: Image.network(
              'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg'),
        ));
  }
}
