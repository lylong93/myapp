import 'package:flutter/material.dart';
import 'package:myapp/views/Detail/index.dart';
import './rightcard.dart';
import 'package:myapp/api/Home/index.dart';

List<Container> _buildGridTileList(int count, context) {
  // print('om$index');
  return List<Container>.generate(
      // print('om$index');
      count,
      (int index) => Container(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Detail(count: index);
                }));
              },
              child: RightCard(index: index),
            ),
          ));
}

class Find extends StatefulWidget {
   @override
  State<StatefulWidget> createState() => _HomeLeftState();
}

class _HomeLeftState extends State<Find> {
  List childList = [];
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    // getdata();
    // _scrollController.addListener(() {
    //   if (_scrollController.position.pixels ==
    //       _scrollController.position.maxScrollExtent) {
    //     getdata();
    //     print('滑动到了最底部');
    //   }
    // });
  }


  getdata() async {
  var jsonString = await HomeApi.getTest();
  var data = jsonString['list'];
  data.forEach((item) {
    // var _item = new HomeItem.fromJson(item);
    // childList..add(_item);
  });
  setState(() {
  });
}

  final List<Widget> list = <Widget>[
    Container(
        // padding: const EdgeInsets.all(10.00),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          // color: Colors.red,
        ),
        child: Column(
          children: <Widget>[
            Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Image.network(
              'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg',
            ),
            // Text('okkekjkkjke',softWrap: true,),
          ],
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(1, 1, 1, .1),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 4 / 5,
        children: _buildGridTileList(8, context),
      ),
    );
  }
}
