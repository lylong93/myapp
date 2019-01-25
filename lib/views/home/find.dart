import 'package:flutter/material.dart';
import 'package:myapp/views/Detail/index.dart';

List<Container> _buildGridTileList(int count, context) {
  return List<Container>.generate(
      count,
      (int index) => Container(
        height: 100.0,
            child: GestureDetector(
              onTap: () {
                print('imao$count');
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return Detail();
                }));
              },
              child: Container(
                  // padding: const EdgeInsets.all(10.00),
                  height: 100.0,
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Column(
                    children: <Widget>[
                      // Flex(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   direction: Axis.horizontal,
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ),
                      Hero(
                        tag: 'om$index',
                        child: 
                        // Image.network(
                        //   'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg',
                        // ),
                        Text('om$index')
                      ),
                      // Hero(
                      //   tag: 'imao',
                      //   child: Image.network(
                      //     'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg',
                      //   ),
                      // ),

                      // Text('okkekjkkjke',softWrap: true,),
                    ],
                  )),
            ),
          ));
}

class Find extends StatelessWidget {
  final List<Widget> list = <Widget>[
    Container(
        // padding: const EdgeInsets.all(10.00),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.red,
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
        // gridDelegate: ,
        children: _buildGridTileList(2, context),
      ),
    );
  }
}
