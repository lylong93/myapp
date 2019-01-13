import 'package:flutter/material.dart';

Widget _build() {
  return (
    Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 30.0),
          child:CircleAvatar(
            radius: 35.0,
          ),
        
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
                        top: BorderSide(width: 1.0, color: Colors.black38),
                        bottom: BorderSide(width: 1.0, color: Colors.black38),
                        left: BorderSide(width: 1.0, color: Colors.black38),
                        right: BorderSide(width: 1.0, color: Colors.black38),
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
                        top: BorderSide(width: 1.0, color: Colors.black38),
                        bottom: BorderSide(width: 1.0, color: Colors.black38),
                        left: BorderSide(width: 1.0, color: Colors.black38),
                        right: BorderSide(width: 1.0, color: Colors.black38),
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

class Item{
  Item({this.iconData,this.text});
  String iconData;
  String text;
}
List items = [
  Item(iconData:'1',text:'2'),
  Item(iconData:'3',text:'5'),
  Item(iconData:'3',text:'6'),
];
Iterable _buildItem() {
  return items
  .map((n) => 
    Container(
      padding: EdgeInsets.only(left:6.0,right:6.0),
      decoration: BoxDecoration(
        border:Border(
          left: BorderSide(width: 1.0, color: Colors.lightBlue),
        )
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.group_work),
          Text('解锁等级'),
            Icon(Icons.navigate_next),
        ],
      ),
    )
  )
  .toList();

}
class MeTop extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Container(
        padding:EdgeInsets.only(top:10.0,left:10.0,right: 10.0,bottom: 15.0),
        height: 170.0,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.black12),
          )
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _build(),
            Row(
              children: _buildItem(),
            ),
            Text('添加个人描述，可以让大家更好的认识你')
          ],
        ),
      );
    }
}