import 'package:flutter/material.dart';
import 'package:myapp/views/Detail/index.dart';

class RightCard extends StatelessWidget {
  RightCard({this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.0,
        margin: EdgeInsets.all(5.0),
        // decoration: BoxDecoration(
        //   color: Colors.red,
        // ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Hero(
              tag: 'om$index',
              child: Image.network(
                'http://pic.zhutou.com/html/UploadPic/2010-6/2010664120959.jpg',
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                padding: EdgeInsets.only(
                    top: 5.0, bottom: 5.0, left: 10.0, right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'hohohohohoho',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 12.0,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Text('some'),
                            ),
                          ],
                        ),
                         Stack(
                            alignment: Alignment(1.3,-3),
                            // alignment: AlignmentDirectional.topEnd,
                            children: <Widget>[
                              Container(
                                // color: Colors.red,
                                width: 50.0,
                                child:  Icon(Icons.grain),
                              ),
                              Text('25')
                            ],
                          ),
                        // ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
