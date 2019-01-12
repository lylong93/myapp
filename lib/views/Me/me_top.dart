import 'package:flutter/material.dart';

Widget _build() {
  return (
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 30.0),
          child:CircleAvatar(),
        ),
        Expanded(
          child:Column(
            children:<Widget>[
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('1'),
                    Text('关注')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('0'),
                    Text('粉丝')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('1'),
                    Text('获赞与收藏')
                  ],
                ),
              ]),
            Row(
              children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 30.0,left: 20.0),
                     decoration:const BoxDecoration(
                      border:Border(
                        top: BorderSide(width: 1.0, color: Colors.lightBlue),
                        bottom: BorderSide(width: 1.0, color: Colors.lightBlue),
                        left: BorderSide(width: 1.0, color: Colors.lightBlue),
                        right: BorderSide(width: 1.0, color: Colors.lightBlue),
                      ),
                      borderRadius: BorderRadius.all(
                         Radius.circular(10.0),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 3.0,bottom:3.0,left: 40.0,right: 40.0),
                    child:Text('个人资料'),
                  ),
                  Container(
                    width: 55.0,
                    decoration:const BoxDecoration(
                      border:Border(
                        top: BorderSide(width: 1.0, color: Colors.lightBlue),
                        bottom: BorderSide(width: 1.0, color: Colors.lightBlue),
                        left: BorderSide(width: 1.0, color: Colors.lightBlue),
                        right: BorderSide(width: 1.0, color: Colors.lightBlue),
                      ),
                      borderRadius: BorderRadius.all(
                         Radius.circular(10.0),
                      ),
                    ),
                    padding: EdgeInsets.only(top: 3.0,bottom:3.0,left: 10.0,right: 10.0),
                    child:Icon(Icons.shop)
                  ),
              ]),
          ]
        ),
        ),

      ],
    )
  );
}

class MeTop extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        padding:EdgeInsets.all(10.0),
        child:Column(
          children: <Widget>[
            _build(),
            Row(
              children: <Widget>[
                Text('完善你的位置信息'),
                Text('解锁等级'),
                Text('成为会员')
              ],
            ),
            Text('添加个人描述，可以让大家更好的认识你')
          ],
        ),
      );
    }
}